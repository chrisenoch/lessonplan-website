# lessonplan-website
Lesson plan website with Java, Spring, Spring Data JPA, JavaScript

# Sample Users
## User with admin access
 - username: lessonplantest / password: lessonplantestA1

## Users without admin access
 - username: dave / password: lessonplantestA1
 - username: chris / password: lessonplantestA1

# Sample databases
Both the lessonplans and lessonplans_test databases need to be installed for the app to work properly. They are available in the [src/main/resources](https://github.com/chrisenoch/lessonplan-website/tree/develop/src/main/resources) directory

# Stripe
 - Sign up for a Stripe account and get your API key from: https://stripe.com/docs/keys  
 - Change STRIPE_PUBLIC_KEY and STRIPE_SECRET_KEY in application.properties
 - Credit card numbers for testing the checkout option: https://stripe.com/docs/testing

