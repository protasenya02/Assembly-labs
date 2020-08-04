{\rtf1\ansi\ansicpg1251\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww33400\viewh18140\viewkind0
\deftab720
\pard\pardeftab720\li80\fi-80\ri460\sa80\partightenfactor0

\f0\fs26 \cf0 \cb2 \expnd0\expndtw0\kerning0
org 100h \cb1 \uc0\u8232 \u8232 \cb2 Start: mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, Privet \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, NewLine \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov ah, 0ah \cb1 \uc0\u8232 \cb2 mov dx, VodStr \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, NewLine \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \cb2 mov al, [VodStr+6] \cb1 \uc0\u8232 \cb2 mov ah, [VodStr+5] \cb1 \uc0\u8232 \cb2 mov [VodStr+6], ah \cb1 \uc0\u8232 \cb2 mov [VodStr+5], al \cb1 \uc0\u8232 \u8232 \cb2 mov ah, [VodStr+10] \cb1 \uc0\u8232 \cb2 sub ah, [VodStr+9] \cb1 \uc0\u8232 \cb2 add ah,[VodStr+7] \cb1 \uc0\u8232 \u8232 \cb2 mov al,[VodStr+2] \cb1 \uc0\u8232 \cb2 mov [VodStr+2], ah \cb1 \uc0\u8232 \u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \u8232 \u8232 \cb2 mov ah, 09h \cb1 \uc0\u8232 \cb2 mov dx, VodStr+2 \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \u8232 \u8232 \u8232 \cb2 mov ah, 08h \cb1 \uc0\u8232 \cb2 int 21h \cb1 \uc0\u8232 \cb2 ret \cb1 \uc0\u8232 \u8232 \u8232 \u8232 \cb2 Privet db 'Please, enter your string:$' \cb1 \uc0\u8232 \cb2 NewLine db 10,13 dup ('$') \cb1 \uc0\u8232 \cb2 VodStr db 20 dup ('$')}