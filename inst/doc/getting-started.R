## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(chatcache)

## ----eval=FALSE---------------------------------------------------------------
# library(ellmer)
# library(chatcache)
# 
# # Initialize (optional — happens automatically)
# chatcache_init()
# 
# chat <- chat_openai(system_prompt = "Be concise.")
# 
# # First call goes to the API and is cached
# answer <- cached_chat(chat, "What is the capital of France?")
# 
# # Second call returns instantly from cache
# answer <- cached_chat(chat, "What is the capital of France?")
# 
# # See what is cached
# chatcache_list()

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinychat)
# library(ellmer)
# library(chatcache)
# 
# ui <- bslib::page_fluid(
#   chat_ui("chat")
# )
# 
# server <- function(input, output, session) {
#   chat <- chat_openai(system_prompt = "You are a helpful assistant.")
# 
#   observeEvent(input$chat_user_input, {
#     cached_shinychat_respond(chat, input$chat_user_input, "chat")
#   })
# }
# 
# shinyApp(ui, server)

## ----eval=FALSE---------------------------------------------------------------
# # List recent entries
# chatcache_list(limit = 20)
# 
# # Clear everything (interactive confirmation)
# chatcache_clear()
# 
# # Or force clear
# chatcache_clear(confirm = FALSE)

## ----eval=FALSE---------------------------------------------------------------
# tools::R_user_dir("chatcache", which = "cache")

## ----eval=FALSE---------------------------------------------------------------
# chatcache_init(cache_dir = "path/to/my/cache")

