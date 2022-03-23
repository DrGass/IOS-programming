//
//  main.swift
//  database
//
//  Created by Użytkownik Gość on 23/03/2022.
//  Copyright © 2022 Użytkownik Gość. All rights reserved.
//

import Foundation

class Document  {
    var uuid: UUID!
    var path: String = ""
    var checksum: [String:String] = [:]
    var tags: Set<UUID>
    var meta: Meta?
    
    init(uuid : UUID, path : String, checksum: [String:String], tags: Set<UUID>, meta: Meta){
        self.uuid = uuid
        self.path = path
        self.checksum = checksum
        self.tags = tags
        self.meta = meta
    }
    func print(){
        Swift.print(self.uuid,self.path, self.checksum, self.tags, self.meta?.decription,separator:"\n")
    }
}

class Tag {
    var uuid: UUID!
    var shortName: String = ""
    var longName: String?
    var description: String?
    
    init(uuid: UUID, shortName: String, longName: String, description: String){
        self.uuid = uuid
        self.shortName = shortName
        self.longName = longName
        self.description = description
    }
    
    static func == (sTag : Tag, nTag: Tag) -> Bool{
        return sTag.uuid == nTag.uuid && sTag.shortName == nTag.shortName && sTag.longName == nTag.longName && sTag.description == nTag.description
    }
    
}

class Meta {
    var decription : String = ""
    init(description: String){
        self.decription = description
    }
}

var newMeta = Meta(description: "papaj")

var newTag1 = Tag(uuid: UUID(), shortName: "programming", longName: "", description: "")
var newTag2 = Tag(uuid: UUID(), shortName: "swift", longName: "", description: "")
var newTag3 = Tag(uuid: UUID(), shortName: "pdf", longName: "", description: "")
var newTag4 = Tag(uuid: UUID(), shortName: "database", longName: "", description: "")
var newTag5 = Tag(uuid: UUID(), shortName: "nosql", longName: "", description: "")

var tagSet: Set<UUID> = []
tagSet.insert(newTag1.uuid)
tagSet.insert(newTag2.uuid)
tagSet.insert(newTag3.uuid)
tagSet.insert(newTag4.uuid)
tagSet.insert(newTag5.uuid)

var newDocument = Document(uuid: UUID(), path: "tirara", checksum: ["aaa":"bbb"],tags:tagSet, meta: newMeta )

print(newDocument.print())

