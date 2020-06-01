resource aws_guardduty_detector "member" {
  count    = var.guardduty ? 1 : 0
  provider = aws.account
  enable   = true
}

resource aws_guardduty_member "member" {
  count                      = var.guardduty ? 1 : 0
  account_id                 = aws_guardduty_detector.member[0].id
  detector_id                = var.guardduty_detector_id
  email                      = var.email
  invite                     = true
  disable_email_notification = true
}

resource aws_guardduty_invite_accepter "member" {
  count             = var.guardduty ? 1 : 0
  detector_id       = aws_guardduty_detector.member[0].id
  master_account_id = var.master_account_id
}
