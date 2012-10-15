#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>

#include "ArrayDataManagerSata.h"

ArrayDataManagerSata::ArrayDataManagerSata()
{

}
ArrayDataManagerSata::~ArrayDataManagerSata()
{

}
int ArrayDataManagerSata::initial()
{
	printf("ArrayDataManagerSata::initial\n");

	//
	string DrModulePath("/sys/bus/pci/drivers/");
	DrModulePath.append("ata_piix");
	
	DIR *pModuleDir = opendir(DrModulePath.c_str());
	if(pModuleDir==NULL){
		printf("no dir %s\n", DrModulePath.c_str());
		return -1;
	}

	struct dirent *dircontent=NULL;
	while((dircontent = readdir(pModuleDir)) != NULL){
		printf("dir is %s\n", dircontent->d_name);

	}
		
	return 0;
}
//int ArrayDataManagerSata::
//{}















































