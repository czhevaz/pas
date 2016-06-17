//import org.springframework.security.authentication.encoding.PlaintextPasswordEncoder
import util.marshalling.CustomObjectMarshallers
import com.smanggin.*
// Place your Spring DSL code here
beans = {
//	passwordEncoder(PlaintextPasswordEncoder)
    localeResolver(org.springframework.web.servlet.i18n.SessionLocaleResolver) {
      defaultLocale = new Locale("en","EN")
      java.util.Locale.setDefault(defaultLocale)
   }

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
            new TransactionGroupMarshaller(),
            new ChartOfAccountMarshaller(),
            new AttachmentMarshaller(),
            new PurchaseOrderCommentMarshaller(),
            new PppDetailMarshaller(),
            new PurchaseOrderAllocationMarshaller(),
            new RfpDetailMarshaller(),
            new PurchaseOrderMarshaller(),
            new PurchaseOrderBalanceMarshaller(),
            new PurchaseOrderApproverMarshaller(),
            new PurchaseOrderWriteOffMarshaller(),
            new SupplierMarshaller()
        ]
     }
}
