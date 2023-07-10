import { VercelRequest, VercelResponse } from '@vercel/node'

const fetch = require('node-fetch')

export default async function handler(request: VercelRequest, response: VercelResponse) {
  // Retrieve the 'url' parameter from the request query
  const { url } = request.query

  try {
    // Make a GET request to the specified URL
    const res = await fetch(url as string, {
      method: 'GET',
      headers: {
        'Access-Control-Allow-Origin': 'http::/localhost:3000',
      },
    })

    // Parse the response body as JSON
    const data = await res.json()

    // Send a JSON response with the fetched data
    response.status(200).json(data)
  } catch (e) {
    // Handle any errors that occur during the fetch
    return response.status(502).json(`Failed to fetch ${url}: ${e.message}`)
  }
}
