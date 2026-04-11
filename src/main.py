from infra.ping import ping


def main() -> None:
    print("Hello world")
    ping_result = ping("https://example.com")
    print(f"Ping result: {ping_result}")


if __name__ == "__main__":
    main()
