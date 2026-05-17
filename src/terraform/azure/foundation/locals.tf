locals {

  region_normalized = replace(lower(var.region), " ", "")

  region_shorts = {
    australiacentral   = "acl"
    australiacentral2  = "acl2"
    australiaeast      = "aue"
    australiasoutheast = "ause"

    brazilsouth     = "brs"
    brazilsoutheast = "brse"

    canadacentral = "cac"
    canadaeast    = "cae"

    centralindia = "cin"
    southindia   = "sin"
    westindia    = "win"

    centralus      = "cus"
    eastus         = "eus"
    eastus2        = "eus2"
    northcentralus = "ncus"
    southcentralus = "scus"
    westcentralus  = "wcus"
    westus         = "wus"
    westus2        = "wus2"
    westus3        = "wus3"

    chinaeast   = "cne"
    chinaeast2  = "cne2"
    chinanorth  = "cnn"
    chinanorth2 = "cnn2"
    chinanorth3 = "cnn3"

    eastasia      = "eas"
    southeastasia = "seas"

    francecentral = "frc"
    francesouth   = "frs"

    germanynorth       = "den"
    germanywestcentral = "dewc"

    japaneast = "jpe"
    japanwest = "jpw"

    jioindiawest    = "jinw"
    jioindiacentral = "jinc"

    koreacentral = "krc"
    koreasouth   = "krs"

    newzealandnorth = "nzn"

    northeurope = "neu"
    westeurope  = "weu"

    norwayeast = "noe"
    norwaywest = "now"

    southafricanorth = "zan"
    southafricawest  = "zaw"

    switzerlandnorth = "chn"
    switzerlandwest  = "chw"

    uaecentral = "uaec"
    uaenorth   = "uaen"

    uksouth = "uks"
    ukwest  = "ukw"

    usdodcentral = "udc"
    usdodeast    = "ude"

    usgovarizona  = "az"
    usgoviowa     = "ia"
    usgovtexas    = "tx"
    usgovvirginia = "va"

    swedencentral = "sec"
    swedensouth   = "ses"

    polandcentral = "plc"
    italynorth    = "itn"
    qatarcentral  = "qac"
    israelcentral = "ilc"

    austriaeast      = "ate"
    belgiumcentral   = "bec"
    chilecentral     = "clc"
    indonesiacentral = "idc"
    malaysiawest     = "myw"
    mexicocentral    = "mxc"
    spaincentral     = "esc"
  }

  region_short = local.region_shorts[local.region_normalized]

  public_ip = var.public_access ? [trim(data.http.myip[0].response_body, "\n")] : null
}