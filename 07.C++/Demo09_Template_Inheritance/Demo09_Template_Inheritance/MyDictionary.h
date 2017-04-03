//
//  MyDictionary.h
//  Demo08_Template
//
//  Created by Yu on 11/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef Demo08_Template_MyDictionary_h
#define Demo08_Template_MyDictionary_h

template <typename K,typename V>
class Dictionary {
	K keys[100];
	V values[100];
	int size;
public:
	Dictionary():size(){
		
	}
	
	void addObjectForKey(const K& key, const V& value){
		keys[size] = key;
		values[size] = value;
		size++;
	}
	
	
	V& operator[](const K& key){
		for (int i = 0; i < size; i++) {
			if (keys[i] == key) {
				return values[i];
			}
		}
		throw "Element will not find";
	}
};

#endif
