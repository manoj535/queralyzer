#include "q_JsonSerializable.h"
#include "../inc/json.h"

#ifndef QUERALYZER_META_DATA_H_
#define QUERALYZER_META_DATA_H_

template <class T>
static void serializeMap (std::map<std::string, T*> &obj_map, std::string & json_output)
{
	Json::ValueType vt = Json::arrayValue;
	Json::Value serializeArrayRoot (vt);
	Json::Value serializeRoot;
	typename std::map<std::string, T*>::iterator it;
	int obj_count = 0;
	for (it = obj_map.begin(); it!= obj_map.end(); ++it)
	{
      if((it->second) != NULL)
		{
            (it->second)->serialize (serializeRoot);
			serializeArrayRoot[obj_count++] = serializeRoot;
		}
	}
	Json::StyledWriter writer;
	json_output = writer.write (serializeArrayRoot);
}

template <class T>
static void deserializeMap (std::map<std::string, T*> &obj_map, std::string & json_input)
{
	Json::ValueType vt = Json::arrayValue;
	Json::Value deserializeArrayRoot (vt);

	Json::Value deserializeRoot;
	Json::Reader reader;
	if (!reader.parse (json_input, deserializeArrayRoot))
	{
		return false;
	}
	int obj_count = deserializeArrayRoot.size();
	int i = 0;
	deserializeRoot = deserializeArrayRoot[i++];
	while (i<obj_count)
	{
		T *new_data = new T();
		new_data->deserialize(deserializeRoot);
		obj_map.insert(std::pair<std::string, T*>(new_data->getName(), new_data));
		deserializeRoot = deserializeArrayRoot[i++];
	}
}

void
static deserializeArray (Json::Value & rootArray,
		std::string * copyValues,
		unsigned int arrayLength)
{
	copyValues = new std::string[arrayLength];
	int i;
	while (i < arrayLength)
	{
		copyValues[i] = rootArray[i].asString ();
		i++;
	}
}

void
static serializeArray (Json::Value & rootArray,
		std::string * inputValues,
		unsigned int arrayLength)
{

	int i;
	while (i < arrayLength)
	{
		rootArray[i] = inputValues[i];
		i++;
	}
}

class ExplainMetaData:public JsonSerializable
{
public:
    ExplainMetaData (void) :rows(0)
    {
    }
    ~ExplainMetaData (void);
	std::string id;
	std::string select_type;
	std::string table;
	std::string type;
	std::string possible_keys;
	std::string key;
	std::string key_len;
	std::string ref;
	int rows;
	std::string Extra;

	void serialize (Json::Value & root);
	void deserialize (Json::Value & root);
    std::string getName();
	ExplainMetaData & operator= (const ExplainMetaData & other);
};

class TableMetaData:public JsonSerializable
{
public:
	TableMetaData (void): rowCount(0), columnCount(0)
	{
    }
    ~TableMetaData (void)
    {
      delete [] tableColumns;
    }
	std::string tableName;
	std::string * tableColumns;
	std::string schemaName;
	std::string storageEngine;
	std::string createOption;
	int rowCount;
	int columnCount;

	void serialize (Json::Value & root);
	void deserialize (Json::Value & root);
    std::string getName();
	TableMetaData & operator= (const TableMetaData & other);
};

class IndexMetaData:public JsonSerializable
{
public:
  IndexMetaData (void): columnCount(0), cardinality(0), nonUnique(false), isNullable(false)
    {
    }
    ~IndexMetaData ()
    {
      delete [] indexColumns;      
    }
	std::string indexName;	//for primary key it is always PRIMARY
	std::string indexType;
	std::string * indexColumns;
	std::string tableName;
	std::string schemaName;
	std::string storageEngine;
	int columnCount;
	int cardinality;
	bool nonUnique;
	bool isNullable;

	void serialize (Json::Value & root);
	void deserialize (Json::Value & root);
    std::string getName();
};

#endif //QUERALYZER_META_DATA_H_
