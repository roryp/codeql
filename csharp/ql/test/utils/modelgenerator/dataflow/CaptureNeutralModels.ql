import csharp
import utils.modelgenerator.internal.CaptureModels
import TestUtilities.InlineMadTest

module InlineMadTestConfig implements InlineMadTestConfigSig {
  string getCapturedModel(Callable c) { result = captureNoFlow(c) }

  string getKind() { result = "neutral" }
}

import InlineMadTest<InlineMadTestConfig>