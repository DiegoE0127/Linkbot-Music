/* 

Diego Escobar, Class of 2022

Song: Fallen Down (Reprise) - Undertale
Time Signature 6/8

Required robots: 2

Todo List:
 - Figure out why the robots would sometimes go out of sync
    - If not able to, compensate for when it goes out of sync
 - Add another robot to harmonize the bass
 - Finish the song (here's the link: https://musescore.com/maxmic480/scores/1686751)

*/

#include <linkbot.h>
CLinkbotL robot1, robot2;
double bpm = 0.88, q = 3;

note_t melodyTheme[]  = {
   /* Theme */
                  // 1
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8},
                  {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, {NOTE_FS5, 8}, {NOTE_CS5, 8}, 
                  {NOTE_B4, 8},  {NOTE_A4, 8},  {NOTE_CS5, q}, {NOTE_A4, 8},  {NOTE_B4, 8},
                  {NOTE_E5, 8},  {NOTE_DS5, 8}, {NOTE_E5, 8},  {NOTE_FS5, 8}, {NOTE_DS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},  {NOTE_FS5, 8}, {NOTE_B4, 8},
                  {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_FS5, 8}, {NOTE_AS4, 8}, {NOTE_G5, q},
                  {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_E5, 8}, {NOTE_FS5, 8},
                  {NOTE_E5, q}, {NOTE_D5, q},{NOTE_CS5, q},
              };
              
note_t bassTheme[] = {
                /* Theme */
                // 1
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_B3, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8}, {NOTE_FS4, 8}, {NOTE_DS4, 8},
                {NOTE_G3, 8}, {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_B3, 8},
                {NOTE_G3, 8}, {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8}, {NOTE_D4, 8},  {NOTE_AS3, 8},
                {NOTE_D4, 8}, {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8}, {NOTE_A4, 8},  {NOTE_FS4, 8},
                {NOTE_CS4, 8}, {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},

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
                {NOTE_CS4, 8}, {NOTE_FS4, 8},  {NOTE_A4, 8},  {NOTE_FS4, 8},  {NOTE_A4, 8},  {NOTE_E4, 8},
            };

robot1.playNotesNB(bassTheme, bpm);
robot2.playNotes(melodyTheme, bpm);


/*

// MUSIC NOTES

-- MELODY --
// 17
{NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
{NOTE_D5, 3}, {0, 8}, {NOTE_CS5, 3}, {0, 8}, {NOTE_D5, 3}, {0, 8},
{NOTE_A4, 4}, {0, 8}, {NOTE_B4, 8}, {NOTE_A4, 8}, {NOTE_G5, 8},
{NOTE_FS4, 8}, {0, 3}, {NOTE_FS5, 3}, {0, 8}, {NOTE_E5, 3}, {0, 8},

// 21
NOTE_D5, 3}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
{NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
{NOTE_FS5, 3}, {0, 8}, {NOTE_G5, 8}, {NOTE_FS5, 8}, {NOTE_E5, 8},
{NOTE_D5, 3}, {NOTE_E5, 3}, {NOTE_CS5, 3},

// 25 - Bridge, Repeat
{NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
{NOTE_D5, 3}, {0, 8}, {NOTE_CS5, 3}, {0, 8}, {NOTE_D5, 3}, {0, 8},
{NOTE_A4, 4}, {0, 8}, {NOTE_B4, 8}, {NOTE_A4, 8}, {NOTE_G5, 8},
{NOTE_FS4, 8}, {0, 3}, {NOTE_FS5, 3}, {0, 8}, {NOTE_E5, 3}, {0, 8},

// 29
{NOTE_D5, 4}, {0, 8}, {NOTE_A4, 8}, {NOTE_B4, 8}, {NOTE_CS5, 8},
{NOTE_D5, 8}, {0, 8}, {NOTE_CS5, 8}, {0, 8}, {NOTE_D5, 8}, {0, 8},
// Bridge, Second Repeat, to Theme Variation
{NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_FS5, 8}, {NOTE_D5, 8}, {NOTE_E5, 8}, {NOTE_FS5, 8},
{NOTE_E5, 3}, {NOTE_D5, 3}, {NOTE_CS5, 3},

// 33 - Theme Variation
{NOTE_A4, 4}, {NOTE_A4, 8}, {NOTE_A5, 4}, {NOTE_A5, 8},

-- BASS --
// 17
{NOTE_G4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8}, 
{NOTE_E4, 8}, {NOTE_CS4, 8},  {NOTE_FS4, 8}, {NOTE_A3, 8},  {NOTE_B3, 8},  {NOTE_CS4, 8},
{NOTE_E4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_CS4, 8}, {NOTE_G3, 8},
{NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_G4, 8},  {NOTE_FS4, 8},
 
// 21
{NOTE_B3, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_D4, 8},  {NOTE_FS4, 8}, {NOTE_B3, 8},
{NOTE_A3, 8}, {NOTE_CS4, 8}, {NOTE_E3, 8},  {NOTE_CS4, 8}, {NOTE_FS4, 8}, {NOTE_AS4, 8},
{NOTE_B4, 8}, {NOTE_FS4, 8}, {NOTE_E4, 8},  {NOTE_B3, 8},  {NOTE_D4, 8},  {NOTE_G4, 8}, 
{NOTE_A4, 8}, {NOTE_FS4, 8}, {NOTE_E4, 8},  {NOTE_D4, 8},  {NOTE_E4, 8},  {NOTE_FS4, 8},

// 25 - Bridge, Repeat
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

*/
