// @ts-check

/** @type {typeof import("vscode")} */
const vscode = (await import("node:module")).default.createRequire(import.meta.url)("vscode");

/** @typedef {import("vscode").ExtensionContext} ExtensionContext */

/** @param {ExtensionContext} context */
export async function activate(context) {
	vscode.window.showInformationMessage(context.extensionPath, "Hello there!");
}

export async function deactivate() {

}