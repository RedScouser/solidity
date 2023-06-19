/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0

#pragma once

#include <libsolidity/ast/ASTVisitor.h>

#include <functional>
#include <sstream>

namespace solidity::frontend::experimental
{
class Analysis;

class IRGeneratorForStatements: public ASTConstVisitor
{
public:
	IRGeneratorForStatements(Analysis const& _analysis): m_analysis(_analysis) {}

	std::string generate(ASTNode const& _node);
private:
	bool visit(InlineAssembly const& _inlineAssembly) override;
	bool visit(VariableDeclarationStatement const& _variableDeclarationStatement) override;
	/// Default visit will reject all AST nodes that are not explicitly supported.
	bool visitNode(ASTNode const& _node) override;
	Analysis const& m_analysis;
	std::stringstream m_code;
};

}
