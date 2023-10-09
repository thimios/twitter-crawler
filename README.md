# twitter-crawler
Crawl a twitter timeline and email only posted urls 


1.  A small homework: Imagine that you don't want to or just don't have enough time to go through the entire Twitter timeline every day and you are only interested in URLs to the various resources that are submitted by the people you follow (e.g., to blog posts). Implement a solution that will solve this problem and will allow to specify either since when you want to fetch tweets or between what timestamps and will deliver the result via the email. Divide the solution into two Rails applications:

1.1 Service A with UI where specify the input (i.e. timestamps but also the email address, to which the results will be delivered)

1.2 Service B will accept the input somehow from Service A and deliver the result via email. The template for the email should be customizable (e.g. using Liquid) and the Service B should be flexible enough to handle potentially other use cases with different input. In that sense, delivering URLs from Twitter would be just one of the many types of emails that such service should be capable of handling. The template for this particular use case should include the URLs themselves, the date, and some info indicating what it is about (especially for shortened URLs). Treat it as a real-world project and send us a link to the repo. 
