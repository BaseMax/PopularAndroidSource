.class public final enum Lcom/franmontiel/localechanger/LocalePreference;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/franmontiel/localechanger/LocalePreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/franmontiel/localechanger/LocalePreference;

.field public static final enum PreferSupportedLocale:Lcom/franmontiel/localechanger/LocalePreference;

.field public static final enum PreferSystemLocale:Lcom/franmontiel/localechanger/LocalePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/franmontiel/localechanger/LocalePreference;

    const/4 v1, 0x0

    const-string v2, "PreferSupportedLocale"

    invoke-direct {v0, v2, v1}, Lcom/franmontiel/localechanger/LocalePreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/LocalePreference;->PreferSupportedLocale:Lcom/franmontiel/localechanger/LocalePreference;

    .line 24
    new-instance v0, Lcom/franmontiel/localechanger/LocalePreference;

    const/4 v2, 0x1

    const-string v3, "PreferSystemLocale"

    invoke-direct {v0, v3, v2}, Lcom/franmontiel/localechanger/LocalePreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/franmontiel/localechanger/LocalePreference;->PreferSystemLocale:Lcom/franmontiel/localechanger/LocalePreference;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/franmontiel/localechanger/LocalePreference;

    .line 22
    sget-object v3, Lcom/franmontiel/localechanger/LocalePreference;->PreferSupportedLocale:Lcom/franmontiel/localechanger/LocalePreference;

    aput-object v3, v0, v1

    sget-object v1, Lcom/franmontiel/localechanger/LocalePreference;->PreferSystemLocale:Lcom/franmontiel/localechanger/LocalePreference;

    aput-object v1, v0, v2

    sput-object v0, Lcom/franmontiel/localechanger/LocalePreference;->$VALUES:[Lcom/franmontiel/localechanger/LocalePreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/franmontiel/localechanger/LocalePreference;
    .locals 1

    .line 22
    const-class v0, Lcom/franmontiel/localechanger/LocalePreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/franmontiel/localechanger/LocalePreference;

    return-object p0
.end method

.method public static values()[Lcom/franmontiel/localechanger/LocalePreference;
    .locals 1

    .line 22
    sget-object v0, Lcom/franmontiel/localechanger/LocalePreference;->$VALUES:[Lcom/franmontiel/localechanger/LocalePreference;

    invoke-virtual {v0}, [Lcom/franmontiel/localechanger/LocalePreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/franmontiel/localechanger/LocalePreference;

    return-object v0
.end method
