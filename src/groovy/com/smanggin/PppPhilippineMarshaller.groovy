package com.smanggin
import grails.converters.JSON


/*
ini class untuk modify output JSON 
ketika class ini dipanggil "as JSON"
*/

class PppPhilippineMarshaller {
 
    void register() {
        JSON.registerObjectMarshaller( PppPhilippine ) { PppPhilippine it ->
            return [
				
				requestorName :it.requestor,
				pppDate :it.pppDate?.format('yyyy-MM-dd'),
				pppNumber :it.number,
				pppDescription :it.pppProgram,
				countryName:it.country?.name,
				lobName :it.lob,
				brandName:it.brand,
				state:it.state,
				amount: it.pppCost,
				//amount2: it.amount2,
				remainCreditLimit:it.remainCreditLimit,
				//remainCreditLimit2:it.remainCreditLimit2,
				version     : it.version,
				
			]
        }
    }
}
