# To cipher example
`openssl aes-256-cbc -in <file to encript> -out <encripted file out name>`
> Deprecated key derivation.

# To descipher examples
`openssl aes-256-cbc -in <encripted file out name> -out <file out in plaintext>`

# Generating rsa key
`openssl genrsa -out key.pem 2048`
> 2048 bit long modulus.
