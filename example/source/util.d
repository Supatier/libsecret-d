module util;

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
class User {
        final HashTable createHashTable() {
                import gtkc.glib;

                return new HashTable(g_str_hash, g_str_equal);
        }

        /**
        * Set the tech details section.
        */
        final void createSchema() {
                HashTable ht;
                ht = createHashTable();
                ht.insert(cast(void*) _userName, cast(void*) 0);
                ht.insert(cast(void*) _dateCreated, cast(void*) 0);
                ht.insert(cast(void*) _serviceName, cast(void*) 0);
                schema = new Schema(SCHEMA_NAME, SecretSchemaFlags.NONE, ht);
        }

        void setPassword(string name, string testPassword) {
                HashTable attributes = createHashTable();
                attributes.insert(cast(void*) _userName, cast(void*) toStringz(name));
                attributes.insert(cast(void*) _serviceName, cast(void*) toStringz("tester"));

                _label = text("Password for \"", name, "\" on \"tester\"");
                auto currentTime = text(Clock.currTime());

                attributes.insert(cast(void*) _dateCreated, cast(void*) currentTime);
                Secret.passwordStorevSync(schema, attributes,
                                DEFAULT_COLLECTION, _label, testPassword, c);
        }

        string getPassword(string name) {
                HashTable attributes = createHashTable();
                attributes.insert(cast(void*) _userName, cast(void*) toStringz(name));
                attributes.insert(cast(void*) _serviceName, cast(void*) toStringz("tester"));
                return Secret.passwordLookupvSync(schema, attributes, c);
        }

        void deletePassword(string testName) {
                HashTable attributes = createHashTable();
                attributes.insert(cast(void*) _userName, cast(void*) testName);
                attributes.insert(cast(void*) _serviceName, cast(void*) toStringz("tester"));
                Secret.passwordClearvSync(schema, attributes, c);
        }

        this() {
                c = new Cancellable();
                _userName = cast(char*) "Name";
                _dateCreated = cast(char*) "Date";
                _serviceName = cast(char*) "Service";
                createSchema();
        }

private:
        enum SCHEMA_NAME = "org.test";
        enum DEFAULT_COLLECTION = "default";

        Schema schema;
        HashTable hashTable;
        Cancellable c;

        char* _userName;
        char* _dateCreated;
        char* _serviceName;

        string _label;
}