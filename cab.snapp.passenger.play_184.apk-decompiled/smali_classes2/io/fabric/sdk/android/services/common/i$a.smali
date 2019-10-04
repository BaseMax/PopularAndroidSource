.class final enum Lio/fabric/sdk/android/services/common/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/fabric/sdk/android/services/common/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM64:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV6:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV7:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum PPC:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum PPC64:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum X86_32:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum X86_64:Lio/fabric/sdk/android/services/common/i$a;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/common/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lio/fabric/sdk/android/services/common/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 154
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v1, 0x0

    const-string v2, "X86_32"

    invoke-direct {v0, v2, v1}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    .line 155
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v2, 0x1

    const-string v3, "X86_64"

    invoke-direct {v0, v3, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->X86_64:Lio/fabric/sdk/android/services/common/i$a;

    .line 156
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v3, 0x2

    const-string v4, "ARM_UNKNOWN"

    invoke-direct {v0, v4, v3}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    .line 157
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v4, 0x3

    const-string v5, "PPC"

    invoke-direct {v0, v5, v4}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->PPC:Lio/fabric/sdk/android/services/common/i$a;

    .line 158
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v5, 0x4

    const-string v6, "PPC64"

    invoke-direct {v0, v6, v5}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->PPC64:Lio/fabric/sdk/android/services/common/i$a;

    .line 159
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v6, 0x5

    const-string v7, "ARMV6"

    invoke-direct {v0, v7, v6}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    .line 160
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v7, 0x6

    const-string v8, "ARMV7"

    invoke-direct {v0, v8, v7}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    .line 161
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    invoke-direct {v0, v9, v8}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    .line 162
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/16 v9, 0x8

    const-string v10, "ARMV7S"

    invoke-direct {v0, v10, v9}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

    .line 163
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const/16 v10, 0x9

    const-string v11, "ARM64"

    invoke-direct {v0, v11, v10}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    const/16 v0, 0xa

    new-array v0, v0, [Lio/fabric/sdk/android/services/common/i$a;

    .line 153
    sget-object v11, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v11, v0, v1

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->X86_64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->PPC:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->PPC64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v8

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v9

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v10

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->b:[Lio/fabric/sdk/android/services/common/i$a;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    const-string v2, "armeabi-v7a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    const-string v2, "armeabi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    const-string v2, "arm64-v8a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    const-string v2, "x86"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lio/fabric/sdk/android/services/common/i$a;
    .locals 3

    .line 179
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    return-object v0

    .line 187
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 188
    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/common/i$a;

    if-nez v0, :cond_1

    .line 190
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/i$a;
    .locals 1

    .line 153
    const-class v0, Lio/fabric/sdk/android/services/common/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/common/i$a;

    return-object p0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/i$a;
    .locals 1

    .line 153
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->b:[Lio/fabric/sdk/android/services/common/i$a;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/i$a;

    return-object v0
.end method
