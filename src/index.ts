import { config } from "dotenv";

// load environment configuration
config();

console.log("Hello, world!");

/**
 * My function does a cool thing.
 * @param a
 * @param b
 * @returns
 */
export const myFunction = (a: number, b: number): number => a + b - 1;
