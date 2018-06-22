import std.stdio;
import std.string;
import std.datetime;
import std.conv;
import std.getopt;

import libsecret.Collection;
import libsecret.Schema;
import libsecret.Service;
import libsecret.Secret;
import libsecret.c.functions;
import libsecret.c.types;

import gio.Cancellable;
import glib.HashTable;

import util;

int main(string[] arg) {
        string testName, testPassword, command;
        User u = new User();

        auto helpInformation = getopt(arg, "name", "Name of the user",
                        &testName, "password", "Password of the user", &testPassword,
                        "command", "{ set | get | del } Set, get , and delete passwords respectively",
                        &command);

        if (helpInformation.helpWanted) {
                defaultGetoptPrinter("Some information about the program.", helpInformation.options);
        }
        writeln(testName);

        switch (command) {
        case "set": {
                        if (testName != null && testPassword != null) {
                                writeln("Setting password");
                                u.setPassword(testName, testPassword);
                                return 0;
                        } else {
                                writeln("Name or password not found. Exiting");
                                return 1;
                        }
                }
        case "get": {
                        if (testName != null) {
                                writeln("Getting password for : ", testName);
                                writeln("Password is : ", u.getPassword(testName));
                                return 0;
                        } else {
                                writeln("Name not found. Exiting");
                                return 1;
                        }
                }
        case "del": {
                        if (testName != null) {
                                writeln("Deleting password for : ", testName);
                                u.deletePassword(testName);
                                return 0;
                        } else {
                                writeln("Name not found. Exiting");
                                return 1;
                        }
                }
        default: {
                        writeln(command, " is non existent. Exiting");
                        return 1;

                }
        }
}
