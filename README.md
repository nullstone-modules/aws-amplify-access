This is an Evolve specific module to connect and AWS Amplify App to an application.

In the current use case, we will be connecting the Amplify app to a Fargate Task.
This task will use the Amplify App to build the GraphQL Schema and Resolvers via the Amplify CLI.
The task will then update the AppSync api with the newly built schema and resolvers.
