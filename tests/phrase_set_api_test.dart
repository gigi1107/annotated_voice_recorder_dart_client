import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for PhraseSetApi
void main() {
  var instance = new PhraseSetApi();

  group('tests for PhraseSetApi', () {
    // Add a new phraseSet to the Database
    //
    //Future<PhraseSet> addPhraseSet(PhraseSet body) async
    test('test addPhraseSet', () async {
      // TODO
    });

    // Delete a phraseSet from the db
    //
    //Future deletePhraseSet(int phraseSetId) async
    test('test deletePhraseSet', () async {
      // TODO
    });

    // Get a phraseSet by Id
    //
    //Future<PhraseSet> getPhraseSet(int phraseSetId) async
    test('test getPhraseSet', () async {
      // TODO
    });

    // Retrieves a number of phrases from a phrase set.
    //
    // Number should be greater than 0.
    //
    //Future<List<Phrase>> getPhrasesFromPhraseSet(int body, int targetPhraseSetId) async
    test('test getPhrasesFromPhraseSet', () async {
      // TODO
    });

    // Update an existing phraseSet
    //
    //Future<PhraseSet> updatePhraseSet(PhraseSet body) async
    test('test updatePhraseSet', () async {
      // TODO
    });

  });
}
