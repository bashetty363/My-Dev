//Generated by wsdl2apex

public class Authantication {
    public class AuthenticateResult {
        public Boolean Authenticated;
        private String[] Authenticated_type_info = new String[]{'Authenticated','urn:authentication.soap.sforce.com',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:authentication.soap.sforce.com','true','false'};
        private String[] field_order_type_info = new String[]{'Authenticated'};
    }
    public class Authenticate {
        public String username;
        public String password;
        public String sourceIp;
        private String[] username_type_info = new String[]{'username','urn:authentication.soap.sforce.com',null,'1','1','false'};
        private String[] password_type_info = new String[]{'password','urn:authentication.soap.sforce.com',null,'1','1','false'};
        private String[] sourceIp_type_info = new String[]{'sourceIp','urn:authentication.soap.sforce.com',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:authentication.soap.sforce.com','true','false'};
        private String[] field_order_type_info = new String[]{'username','password','sourceIp'};
    }
    public class AuthenticationService {
        public String endpoint_x = 'http://localhost/';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'urn:authentication.soap.sforce.com', 'Authantication'};
        public Boolean Authenticate(String username,String password,String sourceIp) {
            Authantication.Authenticate request_x = new Authantication.Authenticate();
            request_x.username = username;
            request_x.password = password;
            request_x.sourceIp = sourceIp;
            Authantication.AuthenticateResult response_x;
            Map<String, Authantication.AuthenticateResult> response_map_x = new Map<String, Authantication.AuthenticateResult>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'urn:authentication.soap.sforce.com',
              'Authenticate',
              'urn:authentication.soap.sforce.com',
              'AuthenticateResult',
              'Authantication.AuthenticateResult'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Authenticated;
        }
    }
}