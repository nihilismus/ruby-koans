test:
	cd koans \
		; rake

clean:
	cd ruby_koans \
		; rm -rf koans

update: clean
	cd ruby_koans \
		; git pull origin master --rebase \
		; rake gen

diff: update
	diff -rupN ruby_koans/koans/ koans/ \
		| grep -E '^\+|^\-' \
		| grep -vE 'assert|expected'

.PHONY: test clean update diff

.DEFAULT_GOAL := test
