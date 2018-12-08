
const ReadableMock = artifacts.require("ReadableMock");
const Reader = artifacts.require("Reader");

contract("Readable", () => {
  it("should be possible to query through a reader", async () => {
    const value = 5;
    const readable = await ReadableMock.new(value);
    const reader = await Reader.new();

    // Compute "get" selector
    const readerFunc = web3.utils.sha3("get()").slice(0, 10);

    const result = await readable.read(reader.address, readerFunc)

    const decoded = web3.eth.abi.decodeParameter("bytes", result)
    assert.equal(web3.utils.toBN(decoded).toNumber(), value);
  });
})
