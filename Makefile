test-rmi:
	RBENV_VERSION=2.6.6 \
		; cd koans \
		; rake

test-jruby:
	RBENV_VERSION=jruby-9.2.13.0 \
		; cd koans \
		; rake

test:
	test-rmi
	test-jruby

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
