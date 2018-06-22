/*
 * This file is part of libsecret-d.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt


module libsecret.SchemaAttribute;

private import glib.Str;
private import glib.c.functions;
private import libsecret.c.functions;
public  import libsecret.c.types;


/**
 * An attribute in a #SecretSchema.
 */
public final class SchemaAttribute
{
	/** the main Gtk struct */
	protected SecretSchemaAttribute* secretSchemaAttribute;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SecretSchemaAttribute* getSchemaAttributeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return secretSchemaAttribute;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)secretSchemaAttribute;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SecretSchemaAttribute* secretSchemaAttribute, bool ownedRef = false)
	{
		this.secretSchemaAttribute = secretSchemaAttribute;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_free(secretSchemaAttribute);
	}


	/**
	 * name of the attribute
	 */
	public @property string name()
	{
		return Str.toString(secretSchemaAttribute.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		secretSchemaAttribute.name = Str.toStringz(value);
	}

	/**
	 * the type of the attribute
	 */
	public @property SecretSchemaAttributeType type()
	{
		return secretSchemaAttribute.type;
	}

	/** Ditto */
	public @property void type(SecretSchemaAttributeType value)
	{
		secretSchemaAttribute.type = value;
	}

	/** */
	public static GType getType()
	{
		return secret_schema_attribute_get_type();
	}
}
