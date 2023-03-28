import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;


class AESEncrptionDescryption{


    // Encrypts plainText in AES256 using the secret key
    public static byte[] encrypt(String plainText, SecretKey secretKey)
            throws Exception {
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.ENCRYPT_MODE, secretKey);
        byte[] cipherText = cipher.doFinal(plainText.getBytes("UTF-8"));
        return cipherText;
    }

    // Decrypts encrypted byte array using the key used for encryption.
    public static String decrypt(byte[] cipherText, SecretKey secretKey)
            throws Exception {
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.DECRYPT_MODE, secretKey);
        String plainText = new String(cipher.doFinal(cipherText), "UTF-8");
        return plainText;
    }

    public static void main(String[] args) throws Exception {
        String plainText = "Hello text me the details  whole paragraph details for the key nned to be encrypted World";
        // create a AES key from string value 
        String secretvalue="secret key" ;
        // pad the string value to the 16 digits length
        String paddedSecretValue = String.format("%-16s", secretvalue.trim()); 
        
        SecretKeySpec secretKey = new SecretKeySpec(paddedSecretValue.getBytes(), "AES");

        //SecretKey secretKey = KeyGenerator.getInstance("AES").generateKey();
        byte[] cipherText = encrypt(plainText, secretKey);
        String decryptedText = decrypt(cipherText, secretKey);

        System.out.println("Original Text:" + plainText);
        //System.out.println("AES Key (Hex Form):" + bytesToHex(secretKey.getEncoded()));
        //System.out.println("Encrypted Text (Hex Form):" + bytesToHex(cipherText));
        System.out.println("Descrypted Text:" + decryptedText);
    }


}