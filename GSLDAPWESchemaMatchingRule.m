/** GSLDAPWESchemaMatchingRule.m - <title>GSLDAPWESchemaMatchingRule: Class GSLDAPWESchemaMatchingRule</title>

   Copyright (C) 2003 Free Software Foundation, Inc.
   
   Written by:  Manuel Guesdon <mguesdon@orange-concept.com>
   Date: 	Jan 2003

   $Revision$
   $Date$
   $Id$
   
   This file is part of the GNUstep GSLDAPWESchemaMatchingRule application.
   
   <license>
   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.
   
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.
   
   You should have received a copy of the GNU Library General Public
   License along with this library; if not, write to the Free
   Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
   </license>
**/

#include <GSWeb/GSWeb.h>
#include <gsldap/GSLDAPCom.h>
#include "GSLDAPWESchemaElementBase.h"
#include "GSLDAPWESchemaMatchingRule.h"

//====================================================================
@implementation GSLDAPWESchemaMatchingRule

-(void)dealloc
{
  DESTROY(_ldapElement);
  [super dealloc];
};

-(GSLDAPMatchingRule*)ldapElement
{
  if (!_ldapElement)
    {
      GSLDAPSchema* schema=[self ldapSchema];
      ASSIGN(_ldapElement,[schema matchingRuleNamed:_elementName]);
    };
  return _ldapElement;
};

@end

