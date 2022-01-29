module.exports = {

    clearUnwantedElements( data ) {
        var content = JSON.parse ( data );
        delete content.createdAt; 
			delete content.createdBy; 
			delete content.lastModifiedAt; 
			delete content.lastModifiedBy; 
			return  JSON.stringify(content)
    }

}
