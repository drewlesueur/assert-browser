try
  assert.fail "got this", "exptected this", "assert.fail works", "=="
catch e
  assert.equal e.message, "assert.fail works"
  assert.equal e.expected, "exptected this"
  assert.equal e.actual, "got this"
  assert.equal e.operator, "=="

assert.ok 1, 1, "these equal"

try
  assert.ok false, "don't equal"
catch e
  assert.equal e.toString(), "AssertionError: don't equal", "Assert ok on false works"
  assert.equal e.actual,false
  assert.equal e.expected, true, "should have expected true"
  assert.equal e.message, "don't equal"
  assert.equal e.operator, "=="

assert.ok 1, "should be ok"

assert.equal true, true, "true is true"

try
  assert.equal false, true, "true isn't false!"
catch e
  assert.equal e.expected, true
  assert.equal e.actual, false
  assert.equal e.message, "true isn't false!"
  assert.equal e.toString(), "AssertionError: true isn't false!"
  assert.equal e.operator, "=="
 

assert.notEqual false, true, "true isn't false on notEqual"

try
  assert.notEqual false, false, "notEqual error"
catch e
  assert.equal e.expected, false
  assert.equal e.actual, false
  assert.equal e.operator, "!="



console.log "pass #{assert.passCount}, fail #{assert.failCount}, total #{assert.count}"
assert.equal assert.count, 25, "There should be 25 tests"
assert.equal assert.failCount, 4, "4 failed tests"
assert.equal assert.passCount, 23, "23 passed tests. There was 21 but 2 more tests since" 


console.log "#{assert.count} tests ran. #{assert.failCount} tests failed.
4 were supposed to fail because were testing the tests
"

  
