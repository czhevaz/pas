//import org.springframework.security.authentication.encoding.PlaintextPasswordEncoder
import util.marshalling.CustomObjectMarshallers
import com.smanggin.*
// Place your Spring DSL code here
beans = {
//	passwordEncoder(PlaintextPasswordEncoder)

	customObjectMarshallers( CustomObjectMarshallers ) {
        marshallers = [
            new RateDetailMarshaller(),
            new RateMarshaller(),
            new CountryMarshaller(),
            new BrandMarshaller(),
            new LobMarshaller(),
            new PurchaseOrderDetailMarshaller(),
            new PppPhilippineMarshaller(),
            new ApprovalDetailMarshaller(),
            new UserMarshaller(),
        ]
     }
}
