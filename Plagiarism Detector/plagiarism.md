```python
import difflib

def check_plagiarism(input_text, documents):
    """
    Check plagiarism by comparing input_text with a list of documents using SequenceMatcher.
    
    :param input_text: The text to check for plagiarism.
    :param documents: A list of existing documents (strings) to compare against.
    :return: A dictionary containing similarity scores with each document.
    """
    results = {}
    
    for i, doc in enumerate(documents):
        similarity = difflib.SequenceMatcher(None, input_text, doc).ratio()
        results[f"Document {i+1}"] = round(similarity, 4)
    
    return results

# Example usage
if __name__ == "__main__":
    input_text = "Copying is wrong!!"
    documents = [
        "This is an example document to detect plagiarism.",
        "Another document with some unrelated content.",
        "This is a sample text to check for duplication."
    ]
    
    similarity_results = check_plagiarism(input_text, documents)
    for doc, score in similarity_results.items():
        print(f"{doc}: {score}")

```


```python

```
