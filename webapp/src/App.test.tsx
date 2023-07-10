import React from 'react'
import { render, screen } from '@testing-library/react'
import App from './App'

test('renders learn react link', () => {
  // Render the App component
  render(<App />)
  
  // Get the element containing the text 'learn react'
  const linkElement = screen.getByText(/learn react/i)
  
  // Assert that the element is in the document
  expect(linkElement).toBeInTheDocument()
})
