/*
 * This file is part of libsecret-d.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt


module libsecret.c.functions;

import std.stdio;
import libsecret.c.types;
version (Windows)
	static immutable LIBRARY_LIBSECRET = ["libsecret-1-0.dll"];
else version (OSX)
	static immutable LIBRARY_LIBSECRET = ["libsecret-1.0.dylib"];
else
	static immutable LIBRARY_LIBSECRET = ["libsecret-1.so.0"];

__gshared extern(C)
{

	// libsecret.Collection

	GType secret_collection_get_type();
	SecretCollection* secret_collection_new_for_dbus_path_finish(GAsyncResult* result, GError** err);
	SecretCollection* secret_collection_new_for_dbus_path_sync(SecretService* service, const(char)* collectionPath, SecretCollectionFlags flags, GCancellable* cancellable, GError** err);
	void secret_collection_create(SecretService* service, const(char)* label, const(char)* alias_, SecretCollectionCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretCollection* secret_collection_create_finish(GAsyncResult* result, GError** err);
	SecretCollection* secret_collection_create_sync(SecretService* service, const(char)* label, const(char)* alias_, SecretCollectionCreateFlags flags, GCancellable* cancellable, GError** err);
	void secret_collection_for_alias(SecretService* service, const(char)* alias_, SecretCollectionFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretCollection* secret_collection_for_alias_finish(GAsyncResult* result, GError** err);
	SecretCollection* secret_collection_for_alias_sync(SecretService* service, const(char)* alias_, SecretCollectionFlags flags, GCancellable* cancellable, GError** err);
	void secret_collection_new_for_dbus_path(SecretService* service, const(char)* collectionPath, SecretCollectionFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void secret_collection_delete(SecretCollection* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_collection_delete_finish(SecretCollection* self, GAsyncResult* result, GError** err);
	int secret_collection_delete_sync(SecretCollection* self, GCancellable* cancellable, GError** err);
	ulong secret_collection_get_created(SecretCollection* self);
	SecretCollectionFlags secret_collection_get_flags(SecretCollection* self);
	GList* secret_collection_get_items(SecretCollection* self);
	char* secret_collection_get_label(SecretCollection* self);
	int secret_collection_get_locked(SecretCollection* self);
	ulong secret_collection_get_modified(SecretCollection* self);
	SecretService* secret_collection_get_service(SecretCollection* self);
	void secret_collection_load_items(SecretCollection* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_collection_load_items_finish(SecretCollection* self, GAsyncResult* result, GError** err);
	int secret_collection_load_items_sync(SecretCollection* self, GCancellable* cancellable, GError** err);
	void secret_collection_refresh(SecretCollection* self);
	void secret_collection_search(SecretCollection* self, SecretSchema* schema, GHashTable* attributes, SecretSearchFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* secret_collection_search_finish(SecretCollection* self, GAsyncResult* result, GError** err);
	void secret_collection_search_for_dbus_paths(SecretCollection* collection, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char** secret_collection_search_for_dbus_paths_finish(SecretCollection* collection, GAsyncResult* result, GError** err);
	char** secret_collection_search_for_dbus_paths_sync(SecretCollection* collection, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	GList* secret_collection_search_sync(SecretCollection* self, SecretSchema* schema, GHashTable* attributes, SecretSearchFlags flags, GCancellable* cancellable, GError** err);
	void secret_collection_set_label(SecretCollection* self, const(char)* label, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_collection_set_label_finish(SecretCollection* self, GAsyncResult* result, GError** err);
	int secret_collection_set_label_sync(SecretCollection* self, const(char)* label, GCancellable* cancellable, GError** err);

	// libsecret.Item

	GType secret_item_get_type();
	SecretItem* secret_item_new_for_dbus_path_finish(GAsyncResult* result, GError** err);
	SecretItem* secret_item_new_for_dbus_path_sync(SecretService* service, const(char)* itemPath, SecretItemFlags flags, GCancellable* cancellable, GError** err);
	void secret_item_create(SecretCollection* collection, SecretSchema* schema, GHashTable* attributes, const(char)* label, SecretValue* value, SecretItemCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretItem* secret_item_create_finish(GAsyncResult* result, GError** err);
	SecretItem* secret_item_create_sync(SecretCollection* collection, SecretSchema* schema, GHashTable* attributes, const(char)* label, SecretValue* value, SecretItemCreateFlags flags, GCancellable* cancellable, GError** err);
	void secret_item_load_secrets(GList* items, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_load_secrets_finish(GAsyncResult* result, GError** err);
	int secret_item_load_secrets_sync(GList* items, GCancellable* cancellable, GError** err);
	void secret_item_new_for_dbus_path(SecretService* service, const(char)* itemPath, SecretItemFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void secret_item_delete(SecretItem* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_delete_finish(SecretItem* self, GAsyncResult* result, GError** err);
	int secret_item_delete_sync(SecretItem* self, GCancellable* cancellable, GError** err);
	GHashTable* secret_item_get_attributes(SecretItem* self);
	ulong secret_item_get_created(SecretItem* self);
	SecretItemFlags secret_item_get_flags(SecretItem* self);
	char* secret_item_get_label(SecretItem* self);
	int secret_item_get_locked(SecretItem* self);
	ulong secret_item_get_modified(SecretItem* self);
	char* secret_item_get_schema_name(SecretItem* self);
	SecretValue* secret_item_get_secret(SecretItem* self);
	SecretService* secret_item_get_service(SecretItem* self);
	void secret_item_load_secret(SecretItem* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_load_secret_finish(SecretItem* self, GAsyncResult* result, GError** err);
	int secret_item_load_secret_sync(SecretItem* self, GCancellable* cancellable, GError** err);
	void secret_item_refresh(SecretItem* self);
	void secret_item_set_attributes(SecretItem* self, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_set_attributes_finish(SecretItem* self, GAsyncResult* result, GError** err);
	int secret_item_set_attributes_sync(SecretItem* self, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	void secret_item_set_label(SecretItem* self, const(char)* label, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_set_label_finish(SecretItem* self, GAsyncResult* result, GError** err);
	int secret_item_set_label_sync(SecretItem* self, const(char)* label, GCancellable* cancellable, GError** err);
	void secret_item_set_secret(SecretItem* self, SecretValue* value, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_item_set_secret_finish(SecretItem* self, GAsyncResult* result, GError** err);
	int secret_item_set_secret_sync(SecretItem* self, SecretValue* value, GCancellable* cancellable, GError** err);

	// libsecret.Prompt

	GType secret_prompt_get_type();
	void secret_prompt_perform(SecretPrompt* self, const(char)* windowId, GVariantType* returnType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* secret_prompt_perform_finish(SecretPrompt* self, GAsyncResult* result, GError** err);
	GVariant* secret_prompt_perform_sync(SecretPrompt* self, const(char)* windowId, GCancellable* cancellable, GVariantType* returnType, GError** err);
	GVariant* secret_prompt_run(SecretPrompt* self, const(char)* windowId, GCancellable* cancellable, GVariantType* returnType, GError** err);

	// libsecret.Schema

	GType secret_schema_get_type();
	SecretSchema* secret_schema_new(const(char)* name, SecretSchemaFlags flags, ... );
	SecretSchema* secret_schema_newv(const(char)* name, SecretSchemaFlags flags, GHashTable* attributeNamesAndTypes);
	SecretSchema* secret_schema_ref(SecretSchema* schema);
	void secret_schema_unref(SecretSchema* schema);

	// libsecret.SchemaAttribute

	GType secret_schema_attribute_get_type();

	// libsecret.Service

	GType secret_service_get_type();
	void secret_service_disconnect();
	void secret_service_get(SecretServiceFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretService* secret_service_get_finish(GAsyncResult* result, GError** err);
	SecretService* secret_service_get_sync(SecretServiceFlags flags, GCancellable* cancellable, GError** err);
	void secret_service_open(GType serviceGtype, const(char)* serviceBusName, SecretServiceFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretService* secret_service_open_finish(GAsyncResult* result, GError** err);
	SecretService* secret_service_open_sync(GType serviceGtype, const(char)* serviceBusName, SecretServiceFlags flags, GCancellable* cancellable, GError** err);
	void secret_service_clear(SecretService* service, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_clear_finish(SecretService* service, GAsyncResult* result, GError** err);
	int secret_service_clear_sync(SecretService* service, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	void secret_service_create_collection_dbus_path(SecretService* self, GHashTable* properties, const(char)* alias_, SecretCollectionCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* secret_service_create_collection_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	char* secret_service_create_collection_dbus_path_sync(SecretService* self, GHashTable* properties, const(char)* alias_, SecretCollectionCreateFlags flags, GCancellable* cancellable, GError** err);
	void secret_service_create_item_dbus_path(SecretService* self, const(char)* collectionPath, GHashTable* properties, SecretValue* value, SecretItemCreateFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* secret_service_create_item_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	char* secret_service_create_item_dbus_path_sync(SecretService* self, const(char)* collectionPath, GHashTable* properties, SecretValue* value, SecretItemCreateFlags flags, GCancellable* cancellable, GError** err);
	SecretValue* secret_service_decode_dbus_secret(SecretService* service, GVariant* value);
	void secret_service_delete_item_dbus_path(SecretService* self, const(char)* itemPath, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_delete_item_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	int secret_service_delete_item_dbus_path_sync(SecretService* self, const(char)* itemPath, GCancellable* cancellable, GError** err);
	GVariant* secret_service_encode_dbus_secret(SecretService* service, SecretValue* value);
	void secret_service_ensure_session(SecretService* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_ensure_session_finish(SecretService* self, GAsyncResult* result, GError** err);
	int secret_service_ensure_session_sync(SecretService* self, GCancellable* cancellable, GError** err);
	GType secret_service_get_collection_gtype(SecretService* self);
	GList* secret_service_get_collections(SecretService* self);
	SecretServiceFlags secret_service_get_flags(SecretService* self);
	GType secret_service_get_item_gtype(SecretService* self);
	void secret_service_get_secret_for_dbus_path(SecretService* self, const(char)* itemPath, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretValue* secret_service_get_secret_for_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	SecretValue* secret_service_get_secret_for_dbus_path_sync(SecretService* self, const(char)* itemPath, GCancellable* cancellable, GError** err);
	void secret_service_get_secrets_for_dbus_paths(SecretService* self, char** itemPaths, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GHashTable* secret_service_get_secrets_for_dbus_paths_finish(SecretService* self, GAsyncResult* result, GError** err);
	GHashTable* secret_service_get_secrets_for_dbus_paths_sync(SecretService* self, char** itemPaths, GCancellable* cancellable, GError** err);
	const(char)* secret_service_get_session_algorithms(SecretService* self);
	const(char)* secret_service_get_session_dbus_path(SecretService* self);
	void secret_service_load_collections(SecretService* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_load_collections_finish(SecretService* self, GAsyncResult* result, GError** err);
	int secret_service_load_collections_sync(SecretService* self, GCancellable* cancellable, GError** err);
	void secret_service_lock(SecretService* service, GList* objects, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void secret_service_lock_dbus_paths(SecretService* self, char** paths, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_lock_dbus_paths_finish(SecretService* self, GAsyncResult* result, char*** locked, GError** err);
	int secret_service_lock_dbus_paths_sync(SecretService* self, char** paths, GCancellable* cancellable, char*** locked, GError** err);
	int secret_service_lock_finish(SecretService* service, GAsyncResult* result, GList** locked, GError** err);
	int secret_service_lock_sync(SecretService* service, GList* objects, GCancellable* cancellable, GList** locked, GError** err);
	void secret_service_lookup(SecretService* service, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	SecretValue* secret_service_lookup_finish(SecretService* service, GAsyncResult* result, GError** err);
	SecretValue* secret_service_lookup_sync(SecretService* service, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	void secret_service_prompt(SecretService* self, SecretPrompt* prompt, GVariantType* returnType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void secret_service_prompt_at_dbus_path(SecretService* self, const(char)* promptPath, GVariantType* returnType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GVariant* secret_service_prompt_at_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	GVariant* secret_service_prompt_at_dbus_path_sync(SecretService* self, const(char)* promptPath, GCancellable* cancellable, GVariantType* returnType, GError** err);
	GVariant* secret_service_prompt_finish(SecretService* self, GAsyncResult* result, GError** err);
	GVariant* secret_service_prompt_sync(SecretService* self, SecretPrompt* prompt, GCancellable* cancellable, GVariantType* returnType, GError** err);
	void secret_service_read_alias_dbus_path(SecretService* self, const(char)* alias_, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* secret_service_read_alias_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	char* secret_service_read_alias_dbus_path_sync(SecretService* self, const(char)* alias_, GCancellable* cancellable, GError** err);
	void secret_service_search(SecretService* service, SecretSchema* schema, GHashTable* attributes, SecretSearchFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GList* secret_service_search_finish(SecretService* service, GAsyncResult* result, GError** err);
	void secret_service_search_for_dbus_paths(SecretService* self, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_search_for_dbus_paths_finish(SecretService* self, GAsyncResult* result, char*** unlocked, char*** locked, GError** err);
	int secret_service_search_for_dbus_paths_sync(SecretService* self, SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, char*** unlocked, char*** locked, GError** err);
	GList* secret_service_search_sync(SecretService* service, SecretSchema* schema, GHashTable* attributes, SecretSearchFlags flags, GCancellable* cancellable, GError** err);
	void secret_service_set_alias(SecretService* service, const(char)* alias_, SecretCollection* collection, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_set_alias_finish(SecretService* service, GAsyncResult* result, GError** err);
	int secret_service_set_alias_sync(SecretService* service, const(char)* alias_, SecretCollection* collection, GCancellable* cancellable, GError** err);
	void secret_service_set_alias_to_dbus_path(SecretService* self, const(char)* alias_, const(char)* collectionPath, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_set_alias_to_dbus_path_finish(SecretService* self, GAsyncResult* result, GError** err);
	int secret_service_set_alias_to_dbus_path_sync(SecretService* self, const(char)* alias_, const(char)* collectionPath, GCancellable* cancellable, GError** err);
	void secret_service_store(SecretService* service, SecretSchema* schema, GHashTable* attributes, const(char)* collection, const(char)* label, SecretValue* value, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_store_finish(SecretService* service, GAsyncResult* result, GError** err);
	int secret_service_store_sync(SecretService* service, SecretSchema* schema, GHashTable* attributes, const(char)* collection, const(char)* label, SecretValue* value, GCancellable* cancellable, GError** err);
	void secret_service_unlock(SecretService* service, GList* objects, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void secret_service_unlock_dbus_paths(SecretService* self, char** paths, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_service_unlock_dbus_paths_finish(SecretService* self, GAsyncResult* result, char*** unlocked, GError** err);
	int secret_service_unlock_dbus_paths_sync(SecretService* self, char** paths, GCancellable* cancellable, char*** unlocked, GError** err);
	int secret_service_unlock_finish(SecretService* service, GAsyncResult* result, GList** unlocked, GError** err);
	int secret_service_unlock_sync(SecretService* service, GList* objects, GCancellable* cancellable, GList** unlocked, GError** err);

	// libsecret.Value

	GType secret_value_get_type();
	SecretValue* secret_value_new(const(char)* secret, ptrdiff_t length, const(char)* contentType);
	SecretValue* secret_value_new_full(char* secret, ptrdiff_t length, const(char)* contentType, GDestroyNotify destroy);
	char* secret_value_get(SecretValue* value, size_t* length);
	const(char)* secret_value_get_content_type(SecretValue* value);
	const(char)* secret_value_get_text(SecretValue* value);
	SecretValue* secret_value_ref(SecretValue* value);
	void secret_value_unref(void* value);

	// libsecret.Secret

	GHashTable* secret_attributes_build(SecretSchema* schema, ... );
	GHashTable* secret_attributes_buildv(SecretSchema* schema, void* va);
	GQuark secret_error_get_quark();
	SecretSchema* secret_get_schema(SecretSchemaType type);
	void secret_password_clear(SecretSchema* schema, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... );
	int secret_password_clear_finish(GAsyncResult* result, GError** err);
	int secret_password_clear_sync(SecretSchema* schema, GCancellable* cancellable, GError** error, ... );
	void secret_password_clearv(SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_password_clearv_sync(SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	void secret_password_free(char* password);
	void secret_password_lookup(SecretSchema* schema, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... );
	char* secret_password_lookup_finish(GAsyncResult* result, GError** err);
	char* secret_password_lookup_nonpageable_finish(GAsyncResult* result, GError** err);
	char* secret_password_lookup_nonpageable_sync(SecretSchema* schema, GCancellable* cancellable, GError** error, ... );
	char* secret_password_lookup_sync(SecretSchema* schema, GCancellable* cancellable, GError** error, ... );
	void secret_password_lookupv(SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	char* secret_password_lookupv_nonpageable_sync(SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	char* secret_password_lookupv_sync(SecretSchema* schema, GHashTable* attributes, GCancellable* cancellable, GError** err);
	void secret_password_store(SecretSchema* schema, const(char)* collection, const(char)* label, const(char)* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... );
	int secret_password_store_finish(GAsyncResult* result, GError** err);
	int secret_password_store_sync(SecretSchema* schema, const(char)* collection, const(char)* label, const(char)* password, GCancellable* cancellable, GError** error, ... );
	void secret_password_storev(SecretSchema* schema, GHashTable* attributes, const(char)* collection, const(char)* label, const(char)* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int secret_password_storev_sync(SecretSchema* schema, GHashTable* attributes, const(char)* collection, const(char)* label, const(char)* password, GCancellable* cancellable, GError** err);
	void secret_password_wipe(char* password);
}