package main

import (
	"fmt"
)

type List struct {
	Root *Node
}

type Node struct {
	Value int
	Next  *Node
}

func (list *List) append(node *Node) {
	current := list.Root

	if current == nil {
		list.Root = node
	} else {
		for {
			if current.Next == nil {
				current.Next = node
				break
			} else {
				current = current.Next
			}
		}
	}
}

func main() {
	list := &List{}

	list.append(&Node{Value:1})
	list.append(&Node{Value:2})
	list.append(&Node{Value:3})

	node := list.Root
	for node != nil {
		fmt.Printf("%v\n", node.Value)
		node = node.Next
	}
}
