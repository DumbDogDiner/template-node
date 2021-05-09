import { myFunction } from "./";

describe("my function test", () => {
	it("should do a cool thing", () => {
		expect(myFunction(1, 2)).toEqual(2);
		expect(myFunction(2, 3)).toEqual(4);
	});
});
