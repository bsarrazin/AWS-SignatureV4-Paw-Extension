import URI from "urijs"

@registerDynamicValueClass
class AWSSignatureV4 {
  static identifier = 'io.srz.paw.AWSSignatureV4'
  static title = 'AWS Signature V4'

  evaluate(context) {
    return "foo"
  }
}
