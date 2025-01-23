def requestURI = request.requestURI
def baseUrl = request.requestURL.toString()

if (baseUrl.endsWith('/')) {
    baseUrl = baseUrl.substring(0, baseUrl.length-1)
} else {
    baseUrl = baseUrl.replace(requestURI, '')
}

request.setAttribute("crafterSpaBaseUrl", baseUrl)

filterChain.doFilter(request, response)