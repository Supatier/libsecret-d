/*
 * This file is part of libsecret-d.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt


module libsecret.Value;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import libsecret.c.functions;
public  import libsecret.c.types;


/**
 * A secret value, like a password or other binary secret.
 */
public class Value
{
	/** the main Gtk struct */
	protected SecretValue* secretValue;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SecretValue* getValueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return secretValue;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)secretValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SecretValue* secretValue, bool ownedRef = false)
	{
		this.secretValue = secretValue;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			secret_value_unref(secretValue);
	}


	/** */
	public static GType getType()
	{
		return secret_value_get_type();
	}

	/**
	 * Create a #SecretValue for the secret data passed in. The secret data is
	 * copied into non-pageable 'secure' memory.
	 *
	 * If the length is less than zero, then @secret is assumed to be
	 * null-terminated.
	 *
	 * Params:
	 *     secret = the secret data
	 *     length = the length of the data
	 *     contentType = the content type of the data
	 *
	 * Returns: the new #SecretValue
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string secret, ptrdiff_t length, string contentType)
	{
		auto p = secret_value_new(Str.toStringz(secret), length, Str.toStringz(contentType));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SecretValue*) p);
	}

	/**
	 * Create a #SecretValue for the secret data passed in. The secret data is
	 * not copied, and will later be freed with the @destroy function.
	 *
	 * If the length is less than zero, then @secret is assumed to be
	 * null-terminated.
	 *
	 * Params:
	 *     secret = the secret data
	 *     length = the length of the data
	 *     contentType = the content type of the data
	 *     destroy = function to call to free the secret data
	 *
	 * Returns: the new #SecretValue
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string secret, ptrdiff_t length, string contentType, GDestroyNotify destroy)
	{
		auto p = secret_value_new_full(Str.toStringz(secret), length, Str.toStringz(contentType), destroy);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(SecretValue*) p);
	}

	/**
	 * Get the secret data in the #SecretValue. The value is not necessarily
	 * null-terminated unless it was created with secret_value_new() or a
	 * null-terminated string was passed to secret_value_new_full().
	 *
	 * Returns: the secret data
	 */
	public string get()
	{
		size_t length;

		return Str.toString(secret_value_get(secretValue, &length));
	}

	/**
	 * Get the content type of the secret value, such as
	 * <literal>text/plain</literal>.
	 *
	 * Returns: the content type
	 */
	public string getContentType()
	{
		return Str.toString(secret_value_get_content_type(secretValue));
	}

	/**
	 * Get the secret data in the #SecretValue if it contains a textual
	 * value. The content type must be <literal>text/plain</literal>.
	 *
	 * Returns: the content type
	 */
	public string getText()
	{
		return Str.toString(secret_value_get_text(secretValue));
	}

	/**
	 * Add another reference to the #SecretValue. For each reference
	 * secret_value_unref() should be called to unreference the value.
	 *
	 * Returns: the value
	 */
	public Value doref()
	{
		auto p = secret_value_ref(secretValue);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(SecretValue*) p, true);
	}

	/**
	 * Unreference a #SecretValue. When the last reference is gone, then
	 * the value will be freed.
	 */
	public void unref()
	{
		secret_value_unref(secretValue);
	}
}
