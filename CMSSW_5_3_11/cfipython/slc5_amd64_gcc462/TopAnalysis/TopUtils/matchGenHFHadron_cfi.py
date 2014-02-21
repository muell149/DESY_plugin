import FWCore.ParameterSet.Config as cms

matchGenHFHadron = cms.EDProducer('GenHFHadronMatcher',
  ttGenEvent = cms.InputTag('genEvt'),
  genJets = cms.InputTag('ak5GenJets', '', 'HLT'),
  noBBbarResonances = cms.bool(True),
  onlyJetClusteredHadrons = cms.bool(False),
  flavour = cms.int32(5)
)
