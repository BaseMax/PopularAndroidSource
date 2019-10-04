.class public final enum Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;
.super Ljava/lang/Enum;
.source "ReleaseNoteItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

.field public static final enum HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

.field public static final enum INDENT_DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

.field public static final enum INDENT_HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    new-instance v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    const/4 v2, 0x0

    const-string v3, "DESC"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    const/4 v2, 0x1

    const-string v3, "HEADER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    const/4 v2, 0x2

    const-string v3, "INDENT_DESC"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->INDENT_DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    const/4 v2, 0x3

    const-string v3, "INDENT_HEADER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->INDENT_HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->a:[Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->a:[Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    return-object v0
.end method
