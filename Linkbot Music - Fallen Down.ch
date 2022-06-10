/* 

Created by: Diego Escobar, Class of 2022

Song: Fallen Down (Reprise) - Undertale
Time Signature 6/8

Required robots: 3

*/

#include <linkbot.h>
CLinkbotI robot1, robot2, robot3;
double bpm = 106 / 60;

note_t melody[] = {
                  /* Theme */
                  // 1
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8},
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, 
                  {NOTE_B5, 8},  {NOTE_A5, 8},  {NOTE_CS5, 4}, {NOTE_A4, 8},  {NOTE_B4, 8},
                  {NOTE_E5, 8},  {NOTE_DS5, 8}, {NOTE_E5, 8},  {NOTE_FS5, 8}, {NOTE_DS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_G5, 4},
                  {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_E5, 8}, {NOTE_F5, 8},
                  {NOTE_E5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8},

                  /* Theme, Repeat */
                  // 9
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8},
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, 
                  {NOTE_B5, 8},  {NOTE_A5, 8},  {NOTE_CS5, 4}, {NOTE_A4, 8},  {NOTE_B4, 8},
                  {NOTE_E5, 8},  {NOTE_DS5, 8}, {NOTE_E5, 8},  {NOTE_FS5, 8}, {NOTE_DS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_G5, 4},
                  {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_E5, 8}, {NOTE_F5, 8},
                  // Theme, Second Repeat, to Bridge
                  {NOTE_CS5, 8}, {0, 8}, {NOTE_FS5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8},

                  /* Bridge */
                  // 17
                  {NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
                  {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
                  {NOTE_A4, 4}, {0, 8}, {NOTE_B4, 8}, {NOTE_A4, 8}, {NOTE_G5, 8},
                  {NOTE_FS4, 8}, {0, 8}, {NOTE_FS5, 8}, {0, 8}, {NOTE_E5, 8}, {0, 8},

                  // 21
                  {NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
                  {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
                  {NOTE_FS5, 4}, {0, 8}, {NOTE_G5, 8}, {NOTE_FS5, 8}, {NOTE_E5, 8},
                  {NOTE_D5, 8}, {0, 8}, {NOTE_E5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8},

                  /* Bridge, Repeat */
                  // 25
                  {NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
                  {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
                  {NOTE_A4, 4}, {0, 8}, {NOTE_B4, 8}, {NOTE_A4, 8}, {NOTE_G5, 8},
                  {NOTE_FS4, 8}, {0, 8}, {NOTE_FS5, 8}, {0, 8}, {NOTE_E5, 8}, {0, 8},

                  // 29
                  {NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
                  {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
                  // Bridge, Second Repeat, to Theme Variation
                  {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_E5, 8}, {NOTE_F5, 8},
                  {NOTE_E5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8},
                  
                  /* Theme Variation   */
                  {NOTE_A4, 4}, {NOTE_A4, 8}, {NOTE_A5, 4}, {NOTE_A5, 8}, 
                }

note_t bass[] = {
                /* Theme */
                // 1
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_G3, 8}, {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},
                {NOTE_G3, 8}, {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_C4, 8}, {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},

                /* Theme, Repeat */
                // 9
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_G3, 8}, {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},
                {NOTE_G3, 8}, {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                // Theme, Second Repeat, to Bridge
                {NOTE_C4, 8}, {NOTE_FS4, 8},  {NOTE_A4, 8},  {NOTE_FS4, 8},  {NOTE_A4, 8},  {NOTE_FS4, 8},
                
                /* Bridge */
                // 17
                {NOTE_G4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8}, 
                {NOTE_E4, 8}, {NOTE_C4, 8},  {NOTE_FS4, 8}, {NOTE_A3, 8},  {NOTE_B3, 8},  {NOTE_CS4, 8},
                {NOTE_E4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_G3, 8},
                {NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8},
 
                // 21
                {NOTE_B3, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_B3, 8},
                {NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_E3, 8},  {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_AS4, 8},
                {NOTE_B4, 8}, {NOTE_FS4, 8}, {NOTE_E4, 8},  {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_G4, 8}, 
                {NOTE_A4, 8}, {NOTE_FS4, 8}, {NOTE_E4, 8},  {NOTE_D4, 8},  {NOTE_E4, 8},  {NOTE_FS4, 8},
 
                /* Bridge, repeat */
                // 25
                {NOTE_G4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8},
                {NOTE_E4, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_A3, 8},  {NOTE_B3, 8},  {NOTE_CS4, 8},
                {NOTE_E4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_G3, 8},
                {NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8},
 
                // 29
                {NOTE_B3, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_B3, 8},
                {NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_E3, 8},  {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_AS4, 8},
                {NOTE_B4, 8}, {NOTE_FS4, 8}, {NOTE_B4, 8},  {NOTE_FS4, 8}, {NOTE_B4, 8},  {NOTE_FS4, 8},
                // Bridge, Second Repeat, to Theme Variation
                {NOTE_A4, 8}, {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},
 
                /* Theme Variation */
                }

robot1.playNotesNB(melody, bpm);
robot2.playNotes(bass, bpm);