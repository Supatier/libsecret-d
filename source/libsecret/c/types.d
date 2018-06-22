/*
 * This file is part of libsecret-d.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt


module libsecret.c.types;

public import gio.c.types;
public import gobject.c.types;


/**
 * Flags for secret_collection_create().
 */
public enum SecretCollectionCreateFlags
{
	/**
	 * no flags
	 */
	COLLECTION_CREATE_NONE = 0,
}
alias SecretCollectionCreateFlags CollectionCreateFlags;

/**
 * Flags which determine which parts of the #SecretCollection proxy are initialized.
 */
public enum SecretCollectionFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * items have or should be loaded
	 */
	LOAD_ITEMS = 2,
}
alias SecretCollectionFlags CollectionFlags;

public enum SecretError
{
	PROTOCOL = 1,
	IS_LOCKED = 2,
	NO_SUCH_OBJECT = 3,
	ALREADY_EXISTS = 4,
}
alias SecretError Error;

/**
 * Flags for secret_item_create().
 */
public enum SecretItemCreateFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * replace an item with the same attributes.
	 */
	REPLACE = 2,
}
alias SecretItemCreateFlags ItemCreateFlags;

/**
 * Flags which determine which parts of the #SecretItem proxy are initialized.
 */
public enum SecretItemFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * a secret has been (or should be) loaded for #SecretItem
	 */
	LOAD_SECRET = 2,
}
alias SecretItemFlags ItemFlags;

/**
 * The type of an attribute in a #SecretSchema. Attributes are stored as strings
 * in the Secret Service, and the attribute types simply define standard ways
 * to store integer and boolean values as strings.
 */
public enum SecretSchemaAttributeType
{
	/**
	 * a utf-8 string attribute
	 */
	STRING = 0,
	/**
	 * an integer attribute, stored as a decimal
	 */
	INTEGER = 1,
	/**
	 * a boolean attribute, stored as 'true' or 'false'
	 */
	BOOLEAN = 2,
}
alias SecretSchemaAttributeType SchemaAttributeType;

/**
 * Flags for a #SecretSchema definition.
 */
public enum SecretSchemaFlags
{
	/**
	 * no flags for the schema
	 */
	NONE = 0,
	/**
	 * don't match the schema name when looking up or
	 * removing passwords
	 */
	DONT_MATCH_NAME = 2,
}
alias SecretSchemaFlags SchemaFlags;

/**
 * Different types of schemas for storing secrets, intended for use with
 * secret_get_schema().
 *
 * Since: 0.18.6
 */
public enum SecretSchemaType
{
	/**
	 * Personal passwords; see %SECRET_SCHEMA_NOTE
	 */
	NOTE = 0,
	/**
	 * Network passwords from older
	 * libgnome-keyring storage; see %SECRET_SCHEMA_COMPAT_NETWORK
	 */
	COMPAT_NETWORK = 1,
}
alias SecretSchemaType SchemaType;

/**
 * Various flags to be used with secret_service_search() and secret_service_search_sync().
 */
public enum SecretSearchFlags
{
	/**
	 * no flags
	 */
	NONE = 0,
	/**
	 * all the items matching the search will be returned, instead of just the first one
	 */
	ALL = 2,
	/**
	 * unlock locked items while searching
	 */
	UNLOCK = 4,
	/**
	 * while searching load secrets for items that are not locked
	 */
	LOAD_SECRETS = 8,
}
alias SecretSearchFlags SearchFlags;

/**
 * Flags which determine which parts of the #SecretService proxy are initialized
 * during a secret_service_get() or secret_service_open() operation.
 */
public enum SecretServiceFlags
{
	/**
	 * no flags for initializing the #SecretService
	 */
	NONE = 0,
	/**
	 * establish a session for transfer of secrets
	 * while initializing the #SecretService
	 */
	OPEN_SESSION = 2,
	/**
	 * load collections while initializing the
	 * #SecretService
	 */
	LOAD_COLLECTIONS = 4,
}
alias SecretServiceFlags ServiceFlags;

struct SecretCollection
{
	GDBusProxy parent;
	SecretCollectionPrivate* pv;
}

/**
 * The class for #SecretCollection.
 */
struct SecretCollectionClass
{
	/**
	 * the parent class
	 */
	GDBusProxyClass parentClass;
	void*[8] padding;
}

struct SecretCollectionPrivate;

struct SecretItem
{
	GDBusProxy parentInstance;
	SecretItemPrivate* pv;
}

/**
 * The class for #SecretItem.
 */
struct SecretItemClass
{
	/**
	 * the parent class
	 */
	GDBusProxyClass parentClass;
	void*[4] padding;
}

struct SecretItemPrivate;

struct SecretPrompt
{
	GDBusProxy parentInstance;
	SecretPromptPrivate* pv;
}

/**
 * The class for #SecretPrompt.
 */
struct SecretPromptClass
{
	/**
	 * the parent class
	 */
	GDBusProxyClass parentClass;
	void*[8] padding;
}

struct SecretPromptPrivate;

struct SecretSchema
{
	/**
	 * the dotted name of the schema
	 */
	const(char)* name;
	/**
	 * flags for the schema
	 */
	SecretSchemaFlags flags;
	/**
	 * the attribute names and types of those attributes
	 */
	SecretSchemaAttribute[32] attributes;
	int reserved;
	void* reserved1;
	void* reserved2;
	void* reserved3;
	void* reserved4;
	void* reserved5;
	void* reserved6;
	void* reserved7;
}

/**
 * An attribute in a #SecretSchema.
 */
struct SecretSchemaAttribute
{
	/**
	 * name of the attribute
	 */
	const(char)* name;
	/**
	 * the type of the attribute
	 */
	SecretSchemaAttributeType type;
}

struct SecretService
{
	GDBusProxy parent;
	SecretServicePrivate* pv;
}

/**
 * The class for #SecretService.
 */
struct SecretServiceClass
{
	/**
	 * the parent class
	 */
	GDBusProxyClass parentClass;
	/**
	 * the #GType of the #SecretCollection objects instantiated
	 * by the #SecretService proxy
	 */
	GType collectionGtype;
	/**
	 * the #GType of the #SecretItem objects instantiated by the
	 * #SecretService proxy
	 */
	GType itemGtype;
	/**
	 *
	 * Params:
	 *     self = the secret service
	 *     prompt = the prompt
	 *     cancellable = optional cancellation object
	 *     returnType = the variant type of the prompt result
	 * Returns: %NULL if the prompt was dismissed or an error occurred,
	 *     a variant result if the prompt was successful
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GVariant* function(SecretService* self, SecretPrompt* prompt, GCancellable* cancellable, GVariantType* returnType, GError** err) promptSync;
	/** */
	extern(C) void function(SecretService* self, SecretPrompt* prompt, GVariantType* returnType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) promptAsync;
	/**
	 *
	 * Params:
	 *     self = the secret service
	 *     result = the asynchronous result passed to the callback
	 * Returns: %NULL if the prompt was dismissed or an error occurred,
	 *     a variant result if the prompt was successful
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GVariant* function(SecretService* self, GAsyncResult* result, GError** err) promptFinish;
	/**
	 *
	 * Params:
	 *     self = the secret service
	 * Returns: the gobject type for collections
	 */
	extern(C) GType function(SecretService* self) getCollectionGtype;
	/**
	 *
	 * Params:
	 *     self = the service
	 * Returns: the gobject type for items
	 */
	extern(C) GType function(SecretService* self) getItemGtype;
	void*[14] padding;
}

struct SecretServicePrivate;

struct SecretValue;

/**
 * An alias to the default collection. This can be passed to secret_password_store()
 * secret_collection_for_alias().
 */
enum COLLECTION_DEFAULT = "default";
alias SECRET_COLLECTION_DEFAULT = COLLECTION_DEFAULT;

/**
 * An alias to the session collection, which will be cleared when the user ends
 * the session. This can be passed to secret_password_store(),
 * secret_collection_for_alias() or similar functions.
 */
enum COLLECTION_SESSION = "session";
alias SECRET_COLLECTION_SESSION = COLLECTION_SESSION;
