# makefile to build html files for DMD

LATEST=prerelease

DMD=dmd
DPL_DOCS_PATH=dpl-docs
DPL_DOCS=dub run --root $(DPL_DOCS_PATH) --

SRC= $(SPECSRC) cpptod.dd ctod.dd pretod.dd cppcontracts.dd index.dd overview.dd	\
	mixin.dd memory.dd interface.dd windows.dd dll.dd htomodule.dd faq.dd	\
	dstyle.dd wc.dd \
	changelog\2.000.dd changelog\2.001.dd changelog\2.002.dd \
	changelog\2.003.dd changelog\2.004.dd changelog\2.005.dd \
	changelog\2.006.dd changelog\2.007.dd changelog\2.008.dd \
	changelog\2.009.dd changelog\2.010.dd changelog\2.011.dd \
	changelog\2.012.dd changelog\2.013.dd changelog\2.014.dd \
	changelog\2.015.dd changelog\2.016.dd changelog\2.017.dd \
	changelog\2.018.dd changelog\2.019.dd changelog\2.020.dd \
	changelog\2.021.dd changelog\2.022.dd changelog\2.023.dd \
	changelog\2.025.dd changelog\2.026.dd changelog\2.027.dd \
	changelog\2.028.dd changelog\2.029.dd changelog\2.030.dd \
	changelog\2.031.dd changelog\2.032.dd changelog\2.033.dd \
	changelog\2.034.dd changelog\2.035.dd changelog\2.036.dd \
	changelog\2.037.dd changelog\2.038.dd changelog\2.039.dd \
	changelog\2.040.dd changelog\2.041.dd changelog\2.042.dd \
	changelog\2.043.dd changelog\2.044.dd changelog\2.045.dd \
	changelog\2.046.dd changelog\2.047.dd changelog\2.048.dd \
	changelog\2.049.dd changelog\2.050.dd changelog\2.051.dd \
	changelog\2.052.dd changelog\2.053.dd changelog\2.054.dd \
	changelog\2.055.dd changelog\2.056.dd changelog\2.057.dd \
	changelog\2.058.dd changelog\2.059.dd changelog\2.060.dd \
	changelog\2.061.dd changelog\2.062.dd changelog\2.063.dd \
	changelog\2.064.dd changelog\2.065.0.dd \
	changelog\2.066.0.dd changelog\2.066.1.dd \
	changelog\2.067.0.dd changelog\2.067.1.dd \
	changelog\2.068.0.dd changelog\2.068.1.dd \
	changelog\2.068.2.dd changelog\2.069.0.dd changelog\2.069.1.dd \
	changelog\index.dd \
	glossary.dd acknowledgements.dd		\
	dcompiler.dd builtin.dd comparison.dd rationale.dd code_coverage.dd	\
	exception-safe.dd rdmd.dd templates-revisited.dd warnings.dd		\
	ascii-table.dd windbg.dd htod.dd regular-expression.dd			\
	lazy-evaluation.dd variadic-function-templates.dd howto-promote.dd	\
	tuple.dd template-comparison.dd COM.dd hijack.dd features2.dd safed.dd	\
	const-faq.dd concepts.dd d-floating-point.dd migrate-to-shared.dd	\
	D1toD2.dd intro-to-datetime.dd simd.dd deprecate.dd download.dd		\
	32-64-portability.dd dll-linux.dd bugstats.php.dd getstarted.dd \
	css\cssmenu.css.dd ctarguments.dd

SPECSRC=language\spec.dd language\intro.dd language\lex.dd \
	language\grammar.dd language\module.dd language\declaration.dd \
	language\type.dd language\property.dd language\attribute.dd \
	language\pragma.dd language\expression.dd language\statement.dd \
	language\arrays.dd language\hash-map.dd language\struct.dd \
	language\class.dd language\interface.dd language\enum.dd \
	language\const3.dd language\function.dd \
	language\operatoroverloading.dd language\template.dd \
	language\template-mixin.dd language\contracts.dd language\version.dd \
	language\traits.dd language\errors.dd language\unittest.dd \
	language\garbage.dd language\float.dd language\iasm.dd \
	language\ddoc.dd language\interfaceToC.dd language\cpp_interface.dd \
	language\objc_interface.dd language\portability.dd language\entity.dd \
	language\memory-safe-d.dd language\abi.dd language\simd.dd

DDOC=macros.ddoc html.ddoc dlang.org.ddoc windows.ddoc doc.ddoc $(NODATETIME)
LANGUAGE_DDOC=$(DDOC) language\language.ddoc

DDOC_STD=std.ddoc std_navbar-release.ddoc modlist-release.ddoc

CHANGELOG_DDOC=$(DDOC) changelog/changelog.ddoc
CHANGELOG_PRE_DDOC=$(CHANGELOG_DDOC) changelog/prerelease.ddoc

ASSETS=images\*.* css\*.*
IMG=dmlogo.gif cpp1.gif d002.ico c1.gif d3.png d4.gif d5.gif favicon.gif

PREMADE=dcompiler.html language-reference.html appendices.html howtos.html articles.html d-keyring.gpg

SPECTARGETS=language\spec.html language\intro.html language\lex.html \
	language\grammar.html language\module.html language\declaration.html \
	language\type.html language\property.html language\attribute.html \
	language\pragma.html language\expression.html language\statement.html \
	language\arrays.html language\hash-map.html language\struct.html \
	language\class.html language\interface.html language\enum.html \
	language\const3.html language\function.html \
	language\operatoroverloading.html language\template.html \
	language\template-mixin.html language\contracts.html language\version.html \
	language\traits.html language\errors.html language\unittest.html \
	language\garbage.html language\float.html language\iasm.html \
	language\ddoc.html language\interfaceToC.html language\cpp_interface.html \
	language\portability.html language\entity.html language\memory-safe-d.html \
	language\abi.html language\simd.html

TARGETS= $(SPECTARGETS) cpptod.html ctod.html pretod.html cppcontracts.html index.html overview.html	\
	mixin.html memory.html windows.html \
	dll.html htomodule.html faq.html dstyle.html wc.html \
	changelog\2.000.html changelog\2.001.html changelog\2.002.html \
	changelog\2.003.html changelog\2.004.html changelog\2.005.html \
	changelog\2.006.html changelog\2.007.html changelog\2.008.html \
	changelog\2.009.html changelog\2.010.html changelog\2.011.html \
	changelog\2.012.html changelog\2.013.html changelog\2.014.html \
	changelog\2.015.html changelog\2.016.html changelog\2.017.html \
	changelog\2.018.html changelog\2.019.html changelog\2.020.html \
	changelog\2.021.html changelog\2.022.html changelog\2.023.html \
	changelog\2.025.html changelog\2.026.html changelog\2.027.html \
	changelog\2.028.html changelog\2.029.html changelog\2.030.html \
	changelog\2.031.html changelog\2.032.html changelog\2.033.html \
	changelog\2.034.html changelog\2.035.html changelog\2.036.html \
	changelog\2.037.html changelog\2.038.html changelog\2.039.html \
	changelog\2.040.html changelog\2.041.html changelog\2.042.html \
	changelog\2.043.html changelog\2.044.html changelog\2.045.html \
	changelog\2.046.html changelog\2.047.html changelog\2.048.html \
	changelog\2.049.html changelog\2.050.html changelog\2.051.html \
	changelog\2.052.html changelog\2.053.html changelog\2.054.html \
	changelog\2.055.html changelog\2.056.html changelog\2.057.html \
	changelog\2.058.html changelog\2.059.html changelog\2.060.html \
	changelog\2.061.html changelog\2.062.html changelog\2.063.html \
	changelog\2.064.html changelog\2.065.0.html \
	changelog\2.066.0.html changelog\2.066.1.html \
	changelog\2.067.0.html changelog\2.067.1.html \
	changelog\2.068.0.html changelog\2.068.1.html \
	changelog\2.068.2.html changelog\2.069.0.html changelog\2.069.1.html \
	changelog\index.html \
	glossary.html acknowledgements.html builtin.html interfaceToC.html	\
	comparison.html rationale.html ddoc.html code_coverage.html		\
	exception-safe.html rdmd.html templates-revisited.html warnings.html	\
	ascii-table.html windbg.html htod.html regular-expression.html		\
	lazy-evaluation.html variadic-function-templates.html			\
	howto-promote.html tuple.html template-comparison.html			\
	template-mixin.html traits.html COM.html cpp_interface.html hijack.html	\
	const3.html features2.html safed.html const-faq.html dmd-windows.html	\
	dmd-linux.html dmd-osx.html dmd-freebsd.html concepts.html		\
	memory-safe-d.html d-floating-point.html migrate-to-shared.html		\
	D1toD2.html unittest.html hash-map.html intro-to-datetime.html		\
	simd.html deprecate.html download.html 32-64-portability.html		\
	d-array-article.html dll-linux.html bugstats.php.html getstarted.html \
	gpg_keys.html forum-template.html css/cssmenu.css ctarguments.html \
	objc_interface.html

# exclude list
MOD_EXCLUDES_RELEASE=--ex=gc. --ex=rt. --ex=core.internal. --ex=core.stdc.config --ex=core.sys. \
	--ex=std.c. --ex=std.algorithm.internal --ex=std.internal. --ex=std.regex.internal. \
	--ex=std.typelist --ex=std.windows. --ex=etc.linux.memoryerror \
	--ex=core.stdc. --ex=std.stream --ex=std.cstream --ex=socketstream

CHMTARGETS=d.hhp d.hhc d.hhk d.chm

HHC=$(ProgramFiles)\HTML Help Workshop\hhc.exe

target: $(TARGETS)

.dd.html:
	$(DMD) -o- -c -D $(DDOC) $*.dd

.d.html:
	$(DMD) -o- -c -D $(DDOC) $*.d

dmd-linux.html : $(DDOC) linux.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) linux.ddoc dcompiler.dd -Dfdmd-linux.html

dmd-freebsd.html : $(DDOC) freebsd.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) freebsd.ddoc dcompiler.dd -Dfdmd-freebsd.html

dmd-osx.html : $(DDOC) osx.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) osx.ddoc dcompiler.dd -Dfdmd-osx.html

dmd-windows.html : $(DDOC) windows.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) windows.ddoc dcompiler.dd -Dfdmd-windows.html

32-64-portability.html : $(DDOC) 32-64-portability.dd

acknowledgements.html : $(DDOC) acknowledgements.dd

ascii-table.html : $(DDOC) ascii-table.dd

bug-stats.php.html : $(DDOC) bug-stats.php.dd

builtin.html : $(DDOC) builtin.dd

changelog\2.000.html : $(CHANGELOG_DDOC) changelog\2.000.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.001.html : $(CHANGELOG_DDOC) changelog\2.001.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.002.html : $(CHANGELOG_DDOC) changelog\2.002.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.003.html : $(CHANGELOG_DDOC) changelog\2.003.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.004.html : $(CHANGELOG_DDOC) changelog\2.004.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.005.html : $(CHANGELOG_DDOC) changelog\2.005.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.006.html : $(CHANGELOG_DDOC) changelog\2.006.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.007.html : $(CHANGELOG_DDOC) changelog\2.007.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.008.html : $(CHANGELOG_DDOC) changelog\2.008.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.009.html : $(CHANGELOG_DDOC) changelog\2.009.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.010.html : $(CHANGELOG_DDOC) changelog\2.010.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.011.html : $(CHANGELOG_DDOC) changelog\2.011.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.012.html : $(CHANGELOG_DDOC) changelog\2.012.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.013.html : $(CHANGELOG_DDOC) changelog\2.013.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.014.html : $(CHANGELOG_DDOC) changelog\2.014.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.015.html : $(CHANGELOG_DDOC) changelog\2.015.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.016.html : $(CHANGELOG_DDOC) changelog\2.016.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.017.html : $(CHANGELOG_DDOC) changelog\2.017.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.018.html : $(CHANGELOG_DDOC) changelog\2.018.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.019.html : $(CHANGELOG_DDOC) changelog\2.019.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.020.html : $(CHANGELOG_DDOC) changelog\2.020.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.021.html : $(CHANGELOG_DDOC) changelog\2.021.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.022.html : $(CHANGELOG_DDOC) changelog\2.022.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.023.html : $(CHANGELOG_DDOC) changelog\2.023.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.025.html : $(CHANGELOG_DDOC) changelog\2.025.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.026.html : $(CHANGELOG_DDOC) changelog\2.026.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.027.html : $(CHANGELOG_DDOC) changelog\2.027.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.028.html : $(CHANGELOG_DDOC) changelog\2.028.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.029.html : $(CHANGELOG_DDOC) changelog\2.029.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.030.html : $(CHANGELOG_DDOC) changelog\2.030.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.031.html : $(CHANGELOG_DDOC) changelog\2.031.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.032.html : $(CHANGELOG_DDOC) changelog\2.032.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.033.html : $(CHANGELOG_DDOC) changelog\2.033.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.034.html : $(CHANGELOG_DDOC) changelog\2.034.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.035.html : $(CHANGELOG_DDOC) changelog\2.035.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.036.html : $(CHANGELOG_DDOC) changelog\2.036.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.037.html : $(CHANGELOG_DDOC) changelog\2.037.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.038.html : $(CHANGELOG_DDOC) changelog\2.038.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.039.html : $(CHANGELOG_DDOC) changelog\2.039.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.040.html : $(CHANGELOG_DDOC) changelog\2.040.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.041.html : $(CHANGELOG_DDOC) changelog\2.041.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.042.html : $(CHANGELOG_DDOC) changelog\2.042.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.043.html : $(CHANGELOG_DDOC) changelog\2.043.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.044.html : $(CHANGELOG_DDOC) changelog\2.044.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.045.html : $(CHANGELOG_DDOC) changelog\2.045.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.046.html : $(CHANGELOG_DDOC) changelog\2.046.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.047.html : $(CHANGELOG_DDOC) changelog\2.047.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.048.html : $(CHANGELOG_DDOC) changelog\2.048.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.049.html : $(CHANGELOG_DDOC) changelog\2.049.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.050.html : $(CHANGELOG_DDOC) changelog\2.050.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.051.html : $(CHANGELOG_DDOC) changelog\2.051.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.052.html : $(CHANGELOG_DDOC) changelog\2.052.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.053.html : $(CHANGELOG_DDOC) changelog\2.053.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.054.html : $(CHANGELOG_DDOC) changelog\2.054.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.055.html : $(CHANGELOG_DDOC) changelog\2.055.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.056.html : $(CHANGELOG_DDOC) changelog\2.056.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.057.html : $(CHANGELOG_DDOC) changelog\2.057.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.058.html : $(CHANGELOG_DDOC) changelog\2.058.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.059.html : $(CHANGELOG_DDOC) changelog\2.059.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.060.html : $(CHANGELOG_DDOC) changelog\2.060.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.061.html : $(CHANGELOG_DDOC) changelog\2.061.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.062.html : $(CHANGELOG_DDOC) changelog\2.062.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.063.html : $(CHANGELOG_DDOC) changelog\2.063.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.064.html : $(CHANGELOG_DDOC) changelog\2.064.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.065.0.html : $(CHANGELOG_DDOC) changelog\2.065.0.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.066.0.html : $(CHANGELOG_DDOC) changelog\2.066.0.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.066.1.html : $(CHANGELOG_DDOC) changelog\2.066.1.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.067.0.html : $(CHANGELOG_DDOC) changelog\2.067.0.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.067.1.html : $(CHANGELOG_DDOC) changelog\2.067.1.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.068.0.html : $(CHANGELOG_DDOC) changelog\2.068.0.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.068.1.html : $(CHANGELOG_DDOC) changelog\2.068.1.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.068.2.html : $(CHANGELOG_DDOC) changelog\2.068.2.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd
changelog\2.069.0.html : $(CHANGELOG_DDOC) changelog\2.069.0.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_PRE_DDOC) $*.dd
changelog\2.069.1.html : $(CHANGELOG_DDOC) changelog\2.069.1.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_PRE_DDOC) $*.dd
changelog\index.html : $(CHANGELOG_DDOC) changelog\index.dd
	$(DMD) -o- -c -D -Df$*.html $(CHANGELOG_DDOC) $*.dd

code_coverage.html : $(DDOC) code_coverage.dd

COM.html : $(DDOC) COM.dd

comparison.html : $(DDOC) comparison.dd

concepts.html : $(DDOC) concepts.dd

const-faq.html : $(DDOC) const-faq.dd

cppcontracts.html : $(DDOC) cppcontracts.dd

cpptod.html : $(DDOC) cpptod.dd

ctarguments.html : $(DDOC) ctarguments.dd

ctod.html : $(DDOC) ctod.dd

D1toD2.html : $(DDOC) D1toD2.dd

d-floating-point.html : $(DDOC) d-floating-point.dd

deprecate.html : $(DDOC) deprecate.dd

dll.html : $(DDOC) dll.dd

dll-linux.html : $(DDOC) dll-linux.dd

download.html : $(DDOC) download.dd

dstyle.html : $(DDOC) dstyle.dd

faq.html : $(DDOC) faq.dd

features2.html : $(DDOC) features2.dd

getstarted.html : $(DDOC) getstarted.dd

glossary.html : $(DDOC) glossary.dd

exception-safe.html : $(DDOC) exception-safe.dd

hijack.html : $(DDOC) hijack.dd

howto-promote.html : $(DDOC) howto-promote.dd

htod.html : $(DDOC) htod.dd

htomodule.html : $(DDOC) htomodule.dd

index.html : $(DDOC) index.dd

intro-to-datetime.html : $(DDOC) intro-to-datetime.dd

gpg_keys.html : $(DDOC) gpg_keys.dd

language\abi.html : $(LANGUAGE_DDOC) language\abi.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\arrays.html : $(LANGUAGE_DDOC) language\arrays.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd


language\attribute.html : $(LANGUAGE_DDOC) language\attribute.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\class.html : $(LANGUAGE_DDOC) language\class.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\const3.html : $(LANGUAGE_DDOC) language\const3.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\contracts.html : $(LANGUAGE_DDOC) language\contracts.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\cpp_interface.html : $(LANGUAGE_DDOC) language\cpp_interface.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\ddoc.html : $(LANGUAGE_DDOC) language\ddoc.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\declaration.html : $(LANGUAGE_DDOC) language\declaration.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\entity.html : $(LANGUAGE_DDOC) language\entity.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\enum.html : $(LANGUAGE_DDOC) language\enum.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\errors.html : $(LANGUAGE_DDOC) language\errors.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\expression.html : $(LANGUAGE_DDOC) language\expression.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\float.html : $(LANGUAGE_DDOC) language\float.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\function.html : $(LANGUAGE_DDOC) language\function.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\garbage.html : $(LANGUAGE_DDOC) language\garbage.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\grammar.html : $(LANGUAGE_DDOC) language\grammar.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\hash-map.html : $(LANGUAGE_DDOC) language\hash-map.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\iasm.html : $(LANGUAGE_DDOC) language\iasm.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\interface.html : $(LANGUAGE_DDOC) language\interface.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\interfaceToC.html : $(LANGUAGE_DDOC) language\interfaceToC.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\intro.html : $(LANGUAGE_DDOC) language\intro.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\objc_interface.html : $(LANGUAGE_DDOC) language\objc_interface.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\lex.html : $(LANGUAGE_DDOC) language\lex.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\memory-safe-d.html : $(LANGUAGE_DDOC) language\memory-safe-d.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\module.html : $(LANGUAGE_DDOC) language\module.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\operatoroverloading.html : $(LANGUAGE_DDOC) language\operatoroverloading.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\portability.html : $(LANGUAGE_LANGUAGE_DDOC) language\portability.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\pragma.html : $(LANGUAGE_DDOC) language\pragma.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\property.html : $(LANGUAGE_DDOC) language\property.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\simd.html : $(LANGUAGE_DDOC) language\simd.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\spec.html : $(LANGUAGE_DDOC) language\spec.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\statement.html : $(LANGUAGE_DDOC) language\statement.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\struct.html : $(LANGUAGE_DDOC) language\struct.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\template-mixin.html : $(LANGUAGE_DDOC) language\template-mixin.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\template.html : $(LANGUAGE_DDOC) language\template.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\traits.html : $(LANGUAGE_DDOC) language\traits.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\type.html : $(LANGUAGE_DDOC) language\type.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\unittest.html : $(LANGUAGE_DDOC) language\unittest.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

language\version.html : $(LANGUAGE_DDOC) language\version.dd
	$(DMD) -o- -c -D -Df$*.html $(LANGUAGE_DDOC) $*.dd

lazy-evaluation.html : $(DDOC) lazy-evaluation.dd

memory.html : $(DDOC) memory.dd

migrate-to-shared.html : $(DDOC) migrate-to-shared.dd

mixin.html : $(DDOC) mixin.dd

overview.html : $(DDOC) overview.dd

pretod.html : $(DDOC) pretod.dd

rationale.html : $(DDOC) rationale.dd

rdmd.html : $(DDOC) rdmd.dd

regular-expression.html : $(DDOC) regular-expression.dd

safed.html : $(DDOC) safed.dd

template-comparison.html : $(DDOC) template-comparison.dd

templates-revisited.html : $(DDOC) templates-revisited.dd

tuple.html : $(DDOC) tuple.dd

variadic-function-templates.html : $(DDOC) variadic-function-templates.dd

warnings.html : $(DDOC) warnings.dd

wc.html : $(DDOC) wc.dd

windbg.html : $(DDOC) windows.ddoc windbg.dd

windows.html : $(DDOC) windows.ddoc windows.dd

forum-template.html : $(DDOC) forum-template.dd

css/cssmenu.css : $(DDOC) css/cssmenu.css.dd
	$(DMD) -o- -c -Df$@ $(DDOC) css/cssmenu.css.dd

modlist-release.ddoc : modlist.d
# need + to run as sub-cmd, redirect doesn't work otherwise
	+$(DMD) -run modlist.d ..\druntime ..\phobos $(MOD_EXCLUDES_RELEASE) >$@

################ Ebook ########################

dlangspec.d : $(SPECSRC) win32.mak
	catdoc -odlangspec.d $(SPECSRC)

dlangspec.html : $(LANGUAGE_DDOC) ebook.ddoc dlangspec.d
	$(DMD) $(LANGUAGE_DDOC) ebook.ddoc dlangspec.d

dlangspec.zip : dlangspec.html ebook.css win32.mak
	del dlangspec.zip
	zip32 dlangspec dlangspec.html ebook.css

dlangspec.mobi : dlangspec.opf dlangspec.html dlangspec.png dlangspec.ncx ebook.css win32.mak
	del dlangspec.mobi
	kindlegen dlangspec.opf

################# CHM #########################

chm : d.chm

chmgen.exe : chmgen.d
	$(DMD) -g chmgen

chm\d.hhp chm\d.hhc chm\d.hhk : chmgen.exe chm-nav-doc.json chm-nav-std.json $(TARGETS)
	chmgen

d.chm : chm\d.hhp chm\d.hhc chm\d.hhk
	-cmd /C "cd chm && "$(HHC)" d.hhp"
	copy /Y chm\d.chm d.chm

chm-nav-doc.json : $(DDOC) chm-nav.dd
	$(DMD) -o- -c -Df$@ $(DDOC) chm-nav.dd

chm-nav-std.json : $(DDOC) $(DDOC_STD) chm-nav.dd
	$(DMD) -o- -c -Df$@ $(DDOC) $(DDOC_STD) chm-nav.dd

d.tag : chmgen.exe $(TARGETS)
	chmgen --only-tags

################# Other #########################

zip:
	del doc.zip
	zip32 doc win32.mak $(LANGUAGE_DDOC) windows.ddoc linux.ddoc osx.ddoc freebsd.ddoc ebook.ddoc
	zip32 doc $(SRC) $(PREMADE)
	zip32 doc $(ASSETS)
	zip32 doc ebook.css dlangspec.opf dlangspec.ncx dlangspec.png

clean:
	del $(TARGETS)
	del $(CHMTARGETS)
	del chmgen.obj chmgen.exe
	del docs.json
	if exist chm rmdir /S /Q chm
	if exist phobos rmdir /S /Q phobos
	-+dub clean --root=$(DPL_DOCS_PATH)

################# DDOX based API docs #########################

apidocs: docs.json
	$(DPL_DOCS) generate-html --file-name-style=lowerUnderscored --std-macros=html.ddoc --std-macros=dlang.org.ddoc --std-macros=std.ddoc --std-macros=macros.ddoc --std-macros=std-ddox.ddoc --override-macros=std-ddox-override.ddoc --package-order=std --git-target=master docs.json library

apidocs-serve: docs.json
	$(DPL_DOCS) serve-html --std-macros=html.ddoc --std-macros=dlang.org.ddoc --std-macros=std.ddoc --std-macros=macros.ddoc --std-macros=std-ddox.ddoc --override-macros=std-ddox-override.ddoc --package-order=std --git-target=master --web-file-dir=. docs.json

docs.json:
	mkdir .tmp
	dir /s /b /a-d ..\druntime\src\*.d | findstr /V "unittest.d gcstub" > .tmp/files.txt
	dir /s /b /a-d ..\phobos\*.d | findstr /V "unittest.d linux osx" >> .tmp/files.txt
	dmd -c -o- -version=CoreDdoc -version=StdDdoc -Df.tmp/dummy.html -Xfdocs.json @.tmp/files.txt
	$(DPL_DOCS) filter docs.json --min-protection=Protected --only-documented $(MOD_EXCLUDES_RELEASE)
	rmdir /s /q .tmp
