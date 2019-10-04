.class public final synthetic Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;

    invoke-direct {v0}, Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;-><init>()V

    sput-object v0, Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;->INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/base/LanguageCode;->fromString(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object p1

    return-object p1
.end method
