
package com.smanggin

public enum PaymentOption {
    COUNTRY(1),
    HEADOFFICE(2),
    PRINCIPAL(3),
    
    private final Integer id

    PaymentOption(Integer id) {
        this.id = id
    }

    static PaymentOption byId(Integer id) {
      values().find { it.id == id }
   }

    Integer getId(){
		id
	}

	
}