[best-practices-for-a-pragmatic-restful-api] (http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)


## error handling
[rest-api-error-return-good-practices : stackoverflow.com] (http://stackoverflow.com/questions/942951/rest-api-error-return-good-practices)

The main choice is do you want to treat the HTTP status code as part of your REST API or not.

Both ways work fine. I agree that, strictly speaking, one of the ideas of REST is that you should use the HTTP Status code as a part of your API (return `200` or `201` for a successful operation and a `4xx` or `5xx` depending on various error cases.) However, there are no REST police. You can do what you want. I have seen far more egregious non-REST APIs being called "RESTful."

At this point (**August, 2015**) *I do recommend that you use the HTTP Status code as part of your API*. It is now much easier to see the return code when using frameworks than it was in the past. In particular, it is now easier to see the non-200 return case and the body of non-200 responses than it was in the past.

**The HTTP Status code is part of your api**

- You will need to carefully pick 4xx codes that fit your error conditions. You can include a rest, xml, or plaintext message as the payload that includes a sub-code and a descriptive comment.

- The clients will need to use a software framework that enables them to get at the HTTP-level status code. Usually do-able, not always straight-forward.

- The clients will have to distinguish between HTTP status codes that indicate a communications error and your own status codes that indicate an application-level issue.

**The HTTP Status code is NOT part of your api**

- The HTTP status code will always be 200 if your app received the request and then responded (both success and error cases)

- ALL of your responses should include "envelope" or "header" information. Typically something like:
```
envelope_ver: 1.0
status:  # use any codes you like. Reserve a code for success. 
msg: "ok" # A human string that reflects the code. Useful for debugging.
data: ...  # The data of the response, if any.
```
- This method can be easier for clients since the status for the response is always in the same place (no sub-codes needed), no limits on the codes, no need to fetch the HTTP-level status-code.

Here's a post with a similar idea: http://yuiblog.com/blog/2008/10/15/datatable-260-part-one/

Main issues:

- Be sure to include version numbers so you can later change the semantics of the api if needed.

- Document...


About option 2 :

> No, tunneling everything through a 200 is not restful at all. It prevents intermediaries from understanding the result of an operation, which will kill any form of caching, it hides the semantics of the operation, and it imposes understanding the content of the message to process an error, breaching the self-contained messages constraint. 
