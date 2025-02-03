import Foundation

enum AppLabels {
    
    enum Buttons {
        static let next = "next".uppercased()
        static let back = "back".uppercased()
        static let check = "check".uppercased()
        static let checkAddress = "check address".uppercased()
        static let reserve = "reserve".uppercased()
    }
    
    enum Screens {
        enum Onboarding {
            enum Screen1 {
                static let title = "Unleash Your Potential!"
                static let description = "Train smarter, push harder, and achieve your fitness goals with ease"
            }
            
            enum Screen2 {
                static let title = "Stay on Top of Your Progress"
                static let description = "Real-time stats, personalized plans, and expert guidance—all in one place."
            }
            
            enum Screen3 {
                static let title = "Join a Thriving Fitness Community"
                static let description = "Surround yourself with motivation, support, and people who share your passion"
            }
            
            enum Screen4 {
                static let title = "Crush Your Limits!"
                static let description = "Challenge yourself with expert-designed workouts and powerful training programs"
            }
        }
        
        enum Home {
            static let title = "welcome back!"
            static let titleDescription = "check out this week's offerings"
            
            static let subtitle = "don't forget"
            static let subtitleDescription = "Check your schedule for the week!"
            
            enum Offers {
                enum Offer1 {
                    static let title = "Best Supplements for Gym"
                    
                    static let description = """
                        When it comes to achieving fitness goals, supplements can be a valuable addition to a well-balanced diet and a structured workout routine. Whether your focus is on muscle growth, endurance, or fat loss, the right supplements can enhance your progress. Here are some of the most effective options:\n
                        1. Whey Protein\n
                        Whey protein is one of the most popular and effective supplements for muscle recovery and growth. It provides the body with essential amino acids, which help repair muscle fibers after training. A high-protein diet also supports fat loss by promoting satiety and preserving lean muscle mass.\n
                        2. Creatine\n
                        Creatine is widely used for improving strength and endurance. It helps the muscles produce more energy during high-intensity workouts, leading to increased power output and better performance. Studies show that creatine can also support muscle growth over time.\n
                        3. Caffeine\n
                        Caffeine is known for its stimulating effects, but it also plays a role in boosting metabolism and improving fat oxidation. It enhances focus and endurance, making it a popular ingredient in pre-workout supplements. However, excessive consumption can lead to side effects like jitteriness or disrupted sleep.\n
                        4. L-Carnitine\n
                        L-Carnitine is a naturally occurring compound that helps the body convert stored fat into energy. This makes it an effective supplement for those looking to enhance fat loss while maintaining performance levels during workouts.
                        5. Branched-Chain Amino Acids (BCAAs)\n
                        BCAAs—leucine, isoleucine, and valine—help reduce muscle fatigue and improve recovery. They are particularly beneficial for those who train intensively or in a fasted state.\n
                        6. Green Tea Extract\n
                        Green tea extract contains antioxidants and compounds like EGCG, which support metabolism and fat burning. It is often included in fat-loss supplements due to its natural thermogenic properties.\n
                        \n\n
                        While supplements can be beneficial, they should never replace proper nutrition and a well-designed training program. Always consult a healthcare professional before adding new supplements to your routine.
                        """
                }
                
                enum Offer2 {
                    static let title = "Grand Opening of Our New Gym"
                    
                    static let description = """
                    We are thrilled to announce the opening of our brand-new fitness center, designed to provide a premium workout experience. Whether you are a beginner or an experienced athlete, our gym offers everything you need to achieve your fitness goals.\n
                    What You Can Expect:\n
                    State-of-the-Art Equipment: Our gym is equipped with the latest strength training and cardio machines.\n
                    Diverse Training Options: From yoga and gymnastics to strength training and HIIT, we offer a variety of classes led by professional trainers.\n
                    Sports Bar & Nutrition Corner: Enjoy a selection of fresh juices, protein shakes, and healthy snacks to fuel your workouts.\n
                    Exclusive Booking System: Reserve training sessions and equipment in advance through our mobile app.\n
                    Loyalty Program: Scan your in-app QR code to earn points that can be redeemed for drinks, supplements, and gym merchandise.\n
                    Opening Day Specials:\n
                    Free personal training session for all new members\n
                    Discounted membership rates for early sign-ups\n
                    Complimentary gym tours and equipment demonstrations\n
                    \n\n
                    Location: 325 Willow Avenue, Downtown Heights\n
                    Opening Date: February 10, 2025\n
                    \n\n
                    For more details, check our ap.
                    """
                }
                
                enum Offer3 {
                    static let title = "Best Back Workout"
                    
                    static let description = """
                    A strong back is essential for overall strength, posture, and injury prevention. It supports nearly every upper-body movement and contributes to a well-balanced physique. Here’s a structured workout designed to build both size and definition in your back muscles:\n
                    1. Pull-Ups (4 sets, max reps)\n
                    Pull-ups are a fundamental bodyweight exercise that targets the lats, traps, and rear delts. They also improve grip strength and overall upper-body endurance.
                    2. Deadlifts (4 sets, 6-8 reps)\n
                    One of the most effective compound movements, deadlifts engage the entire posterior chain, including the lower back, glutes, and hamstrings. Focus on maintaining proper form to avoid injuries.\n
                    3. Lat Pulldown (4 sets, 10-12 reps)\n
                    The lat pulldown machine mimics the movement of pull-ups while allowing for adjustable resistance. This exercise helps develop width in the back.\n
                    4. Bent-Over Rows (4 sets, 8-10 reps)\n
                    This movement strengthens the mid-back and improves overall pulling strength. It can be performed with a barbell or dumbbells.\n
                    5. Face Pulls (3 sets, 12-15 reps)\n
                    Face pulls target the upper traps and rear delts, promoting shoulder health and stability. This exercise is especially useful for those who spend long hours sitting or working at a desk.\n
                    6. Hyperextensions (3 sets, 12 reps)\n
                    Strengthening the lower back is crucial for preventing injuries and improving posture. Hyperextensions engage the erector spinae muscles, which support the spine.\n
                    For optimal results, focus on progressive overload, proper form, and adequate recovery between sessions. Adding variations and adjusting rep ranges can help avoid plateaus.\n
                    """
                }
                
                enum Offer4 {
                    static let title = "Martial Arts for Women"
                    
                    static let description = """
                    Martial arts training is an excellent way for women to build confidence, improve physical fitness, and develop self-defense skills. Whether you are looking for a high-energy workout or a discipline that focuses on technique and flexibility, there is a martial art to suit your needs.\n
                    Benefits of Martial Arts for Women:\n
                    Self-Defense: Learning basic defensive techniques can increase personal safety.\n
                    Strength & Endurance: Martial arts training builds functional strength, balance, and stamina.\n
                    Mental Focus: Many martial arts emphasize discipline, patience, and mental clarity.\n
                    Stress Relief: Physical activity combined with mindfulness techniques helps reduce stress and anxiety.\n
                    Best Martial Arts Styles for Women:\n
                    Kickboxing – A high-intensity sport that combines striking techniques with a great cardio workout. It is effective for self-defense and overall fitness.\n
                    Boxing – Focuses on speed, agility, and technique. It improves reflexes and helps develop upper-body strength.\n
                    Muay Thai – Known as the “Art of Eight Limbs,” Muay Thai incorporates punches, kicks, elbows, and knee strikes, making it highly effective for self-defense.\n
                    Brazilian Jiu-Jitsu (BJJ) – Unlike striking martial arts, BJJ focuses on ground techniques and submissions, allowing smaller individuals to defend against larger opponents.\n
                    Tai Chi – A more meditative form of martial arts, Tai Chi enhances flexibility, balance, and coordination, making it ideal for stress relief.\n
                    Getting Started:\n
                    Many gyms and studios offer introductory classes, allowing beginners to explore different martial arts before committing to one. It is recommended to start with a style that aligns with your fitness level and personal goals.\n
                    Regardless of the discipline you choose, martial arts provide a unique combination of physical fitness, mental strength, and self-defense skills, making them an excellent choice for women of all ages.\n
                    """
                }
            }
        }
        
        enum Classes {
            static let title = "Pick a workout"
            static let subtitle = "Or check to see if you have activity"
            
            enum Yoga {
                static let title = "fitness yoga"
                static let subtitle = "for weight loss"
            }
            
            enum Schedule {
                static let title = "Your\nschedule"
                static let subtitle = "check your training schedule"
                
                static let timePractice = "practice at 7 pm"
                
                static let nameTextField = "your name"
                static let phoneTextField = "phone number"
                
                static let titleSuccessReserve = "Thank you for your reservation!"
                static let subtitleSuccessReserve = "Our administrator will contact you"
            }
            
            enum Gym {
                static let title = "Gymnastics"
                static let subtitle = "For fortitude and stamina"
            }
        }
        
        enum SportBar {
            static let title = "check out the range"
            static let subtitle = "and come to the gym for them"
            static let note = "*this page is for informational purposes only. all purchases are made exclusively offline."
            
            enum Food {
                static let title = "Food"
                
                enum WheyProtein {
                    static let title = "whey protein"
                    static let description = """
                     – A premium-quality whey protein blend designed to support muscle recovery and growth. Packed with essential amino acids and fast-absorbing protein, it helps enhance post-workout recovery, boost strength, and promote lean muscle development. Ideal for athletes, fitness enthusiasts, and anyone looking to meet their daily protein needs. Available in a variety of delicious flavors for a great-tasting experience.
                    """
                }
                
                enum Ceratine {
                    static let title = "creatine"
                    static let description = " – A powerful supplement known for improving athletic performance, increasing strength, and enhancing muscle endurance. Micronized for better absorption, this creatine helps fuel high-intensity workouts and accelerates recovery between training sessions. Perfect for weightlifters, bodybuilders, and athletes looking to maximize their power output and muscle gains."
                }
                
                enum ProteinBars {
                    static let title = "Protein Bars"
                    static let description = " – A nutritious and convenient snack for those on the go. Each bar is packed with high-quality protein, fiber, and essential vitamins to fuel your body and keep hunger at bay. Ideal for pre-workout energy, post-workout recovery, or as a healthy alternative to sugary snacks. Available in multiple flavors, including chocolate, peanut butter, and vanilla."
                }
            }
            
            enum Equipment {
                static let title = "Equipment"
                
                enum Kettlebell {
                    static let title = "Kettlebell"
                    static let description = " – A versatile and durable strength-training tool designed for full-body workouts. Ideal for exercises like kettlebell swings, squats, deadlifts, and overhead presses, it enhances muscular endurance, coordination, and flexibility. Made from high-quality cast iron with a comfortable grip, it provides stability and control during movements. Available in multiple weight options to suit all fitness levels."
                }
                
                enum GymMat {
                    static let title = "Gym Mat"
                    static let description = " – A high-density, non-slip exercise mat designed for comfort and safety during workouts. Provides excellent cushioning for yoga, pilates, stretching, and bodyweight exercises. Made with eco-friendly, moisture-resistant material, ensuring durability and easy cleaning. Lightweight and easy to roll up, making it perfect for both home and gym use."
                }
                
                enum ElasticBand {
                    static let title = "Elastic Band"
                    static let description = " – A set of high-quality resistance bands designed to add variety to strength training and mobility exercises. Perfect for rehabilitation, stretching, and building muscle endurance. Available in different resistance levels to suit beginners and advanced athletes. Compact and portable, making it easy to incorporate into any workout routine, whether at home, in the gym, or while traveling."
                }
                
                enum YellowGymBall {
                    static let title = "Yellow Gym Ball"
                    static let description = " – A durable, anti-burst stability ball designed for core workouts, balance training, and rehabilitation exercises. Helps strengthen abdominal muscles, improve posture, and increase flexibility. Suitable for yoga, pilates, and physical therapy. Includes an anti-slip surface for added safety during exercises."
                }
                
                enum BlueGymBall {
                    static let title = "Blue Gym Ball"
                    static let description = " – A professional-grade exercise ball built for strength training, flexibility exercises, and overall fitness improvement. Helps enhance core stability, coordination, and muscle tone. Ideal for desk use as an ergonomic chair alternative to improve posture and reduce back strain. Made with thick, anti-burst PVC material for maximum durability."
                }
                
                enum RedGymBall {
                    static let title = "Red Gym Ball"
                    static let description = " – A premium stability ball for a wide range of fitness activities, including strength training, stretching, and rehabilitation. Designed to support dynamic movements while improving balance and coordination. Suitable for both beginners and advanced users looking to add an extra challenge to their workouts. Comes with an easy-to-use air pump for quick inflation and adjustments."
                }
            }
        }
        
        enum Profile {
            static let title = "Your account"
            static let subtitle = "Don't forget your QR code"
            static let scan = "Scan the QR in the hall"
            static let address = """
            "123 Maple Avenue, Apt. 56\n
            Los Angeles, CA 90012\n
            United States
            """
        }
    }
}
