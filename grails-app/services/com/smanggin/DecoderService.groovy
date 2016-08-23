package com.smanggin

import org.apache.commons.codec.binary.Base64

/**
 * DecoderService
 * A service class encapsulates the core business logic of a Grails application
 */
class DecoderService {

    static transactional = true

    // ========== ENCRYPT ===========
    def String encrypt(text) {

        def encrypted

        try {
            byte[] encodedBytes = Base64.encodeBase64(text.getBytes());
            encrypted = new String(encodedBytes) 
        } catch (Exception e) {
            log.error("failed to encrypt password." + e.getMessage())
        }
        
        return encrypted
    }
    // ======== END ENCRYPT ==========

    // =========== DECRYPT ============
    def String decrypt(text) {

        String textData = text
        
        String decrypted

        if(text){
            byte[] encodedBytes = textData.getBytes()
            decrypted = new String(Base64.decodeBase64(encodedBytes))    
        }
        

        return decrypted; 

    }
    // ======== END DECRYPT =========
}
