/*
File for declaring the types of environment variable.
Modify the `ProcessEnv` interface below to change what variables
are available according to the TypeScript compiler at runtime.
*/

declare global {
	namespace NodeJS {
		interface ProcessEnv {
			NODE_ENV: "development" | "production";
		}
	}
}

export {};
