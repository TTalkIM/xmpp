OCAMLMAKEFILE = ../OCamlMakefile

SOURCES       = xmlstream.ml auth.ml xmpp.ml jeps.ml
THREADS       = yes
USE_CAMLP4    = yes
PACKS         = ulex
INCDIRS       = ../xml
OCAMLFLAGS    = -syntax camlp4o
#OCAMLLDFLAGS  = nums.cmxa cryptokit.cmxa xml.cmxa \
#		-linkpkg -pack
OCAMLDEP      = ocamldep -package ulex -syntax camlp4o 
RESULT        = xmpp

all: ncl

include $(OCAMLMAKEFILE)

