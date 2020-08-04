{\rtf1\ansi\ansicpg1251\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\li80\fi-80\ri460\sa80\partightenfactor0

\f0\fs26 \cf0 \cb2 \expnd0\expndtw0\kerning0
org 100h \cb1 \uc0\u8232 \u8232 \cb2 Start: \cb1 \uc0\u8232 \cb2 mov ah,09h \cb1 \uc0\u8232 \cb2 mov dx, EnterName \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov ah, 0ah \cb1 \uc0\u8232 \cb2 mov dx, VodStr \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \cb2 Line: \cb1 \uc0\u8232 \cb2 mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, NewLine \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 Hello: mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, HelloName \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov ah,09h \cb1 \uc0\u8232 \cb2 mov dx, VodStr+2 \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \u8232 \cb2 EndOfTheProgram: \cb1 \uc0\u8232 \cb2 mov ah, 08h \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \cb2 ret \cb1 \uc0\u8232 \u8232 \u8232 \cb2 EnterName db 'Enter your name:$' \cb1 \uc0\u8232 \cb2 HelloName db 'Hello,$' \cb1 \uc0\u8232 \cb2 VodStr db 10 dup ('$') \cb1 \uc0\u8232 \cb2 NewLine db 10,13,'$'}