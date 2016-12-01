global class EmailServiceClass implements Messaging.InboundEmailHandler {
      global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
          Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
          System.debug('Subject ::: '+ email.subject);
          System.debug('========'+  email);
          try{
              Contact con;
              if(String.isNotEmpty(email.subject)){
              con = new Contact(LastName = email.subject.split('#')[0], FirstName = email.subject.split('#')[1], Email = email.subject.split('#')[2]);
              insert con;
              System.debug('Binary::'+email.binaryAttachments.size());
              System.debug('text::'+email.textAttachments.size());
              //String contype;
                  if(email.binaryAttachments.size()>0){
                      /*for(Integer i=0;i<=email.headers.Size();i++){
                          if(email.headers[i].Name == 'Content-Type'){
                          contype = email.headers[i].Value;
                          }
                      }*/
                      Attachment newatt = new Attachment(ParentId = con.Id,Name = email.binaryAttachments[0].fileName,Body = email.binaryAttachments[0].Body);//ContentType = contype, 
                      insert newatt;
                  }
              }
          }catch(Exception ex){
          }
          return result;
      }
  }