.class public final enum Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/franmontiel/localechanger/utils/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

.field public static final enum CompleteMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

.field public static final enum LanguageAndCountryMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

.field public static final enum LanguageMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

.field public static final enum NoMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    const/4 v1, 0x0

    const-string v2, "NoMatch"

    invoke-direct {v0, v2, v1}, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->NoMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    .line 33
    new-instance v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    const/4 v2, 0x1

    const-string v3, "LanguageMatch"

    invoke-direct {v0, v3, v2}, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    .line 34
    new-instance v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    const/4 v3, 0x2

    const-string v4, "LanguageAndCountryMatch"

    invoke-direct {v0, v4, v3}, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageAndCountryMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    .line 35
    new-instance v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    const/4 v4, 0x3

    const-string v5, "CompleteMatch"

    invoke-direct {v0, v5, v4}, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->CompleteMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    .line 31
    sget-object v5, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->NoMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    aput-object v5, v0, v1

    sget-object v1, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageAndCountryMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->CompleteMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->$VALUES:[Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;
    .locals 1

    .line 31
    const-class v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    return-object p0
.end method

.method public static values()[Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;
    .locals 1

    .line 31
    sget-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->$VALUES:[Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    invoke-virtual {v0}, [Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    return-object v0
.end method
